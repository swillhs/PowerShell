using System.Management.Automation;
using System;

namespace Nutanix {

public class Task {
  public string Uuid;
  public string Status;
  public string StartTime;
  public string CreationTime;
  public string CompletionTime;
  public string ProgressMessage;
  public string OperationType;
  public int PercentageComplete;
  public int DefaultPollTimeoutSecs = 2147483;
  public int DefaultPollIntervalMs = 500;
  public dynamic json;
  public Task(dynamic json) {
    Uuid = json.uuid;
    Status = json.status;
    StartTime = json.start_time;
    CreationTime = json.creation_time;
    CompletionTime = json.completion_time;
    ProgressMessage = json.progress_message;
    OperationType = json.operation_type;
    PercentageComplete = json.percentage_complete;
    this.json = json;
  }

  public Task(string uuid) {
    Uuid = uuid;
  }

  public static Task FromUuidInJson(dynamic json) {
    return new Task(json.status.execution_context.task_uuid.ToString());
  }

  public Task Wait() {
    return Wait(DefaultPollTimeoutSecs);
  }

  public Task Wait(int timeoutSecs) {
    DateTime start = DateTime.Now;
    while ((DateTime.Now - start).TotalMilliseconds < timeoutSecs * 1000) {
      System.Threading.Thread.Sleep(DefaultPollIntervalMs);
      var task = GetTaskCmdlet.GetTaskByUuid(Uuid);
      if (task.Status != "RUNNING") {
        return task;
      }
    }
    return null;
  }
}

[CmdletAttribute(VerbsCommon.Get, "Task")]
public class GetTaskCmdlet : Cmdlet {
  [Parameter()]
  public string Uuid { get; set; } = "";

  [Parameter()]
  public Task Task { get; set; } = null;

  protected override void ProcessRecord() {
    if (!String.IsNullOrEmpty(Uuid)) {
      WriteObject(GetTaskByUuid(Uuid));
      return;
    }

    if (Task != null) {
      WriteObject(GetTaskByUuid(Task.Uuid));
      return;
    }

    throw new Exception("Expected either -Uuid or -Task");
  }

  public static Task GetTaskByUuid(string uuid) {
    // TODO: validate using UUID regexes that 'uuid' is in correct format.
    var json = Util.RestCall("/tasks/" + uuid, "GET", "" /* requestBody */);
    return new Task(json);
  }
}

}