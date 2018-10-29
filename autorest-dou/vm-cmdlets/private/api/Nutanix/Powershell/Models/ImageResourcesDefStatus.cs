namespace Nutanix.Powershell.Models
{
    using static Microsoft.Rest.ClientRuntime.Extensions;
    /// <summary>Describes the image status resources object.</summary>
    public partial class ImageResourcesDefStatus : Nutanix.Powershell.Models.IImageResourcesDefStatus, Microsoft.Rest.ClientRuntime.IValidates
    {
        /// <summary>Backing field for <see cref="Architecture" /> property.</summary>
        private string _architecture;

        /// <summary>The supported CPU architecture for a disk image.</summary>
        public string Architecture
        {
            get
            {
                return this._architecture;
            }
            set
            {
                this._architecture = value;
            }
        }
        /// <summary>Backing field for <see cref="Checksum" /> property.</summary>
        private Nutanix.Powershell.Models.IChecksum _checksum;

        /// <summary>
        /// Checksum of the image. The checksum is used for image validation if the image has a source specified. For images that
        /// do not have their source specified the checksum is generated by the image service.
        /// </summary>
        public Nutanix.Powershell.Models.IChecksum Checksum
        {
            get
            {
                return this._checksum;
            }
            set
            {
                this._checksum = value;
            }
        }
        /// <summary>Backing field for <see cref="ImageType" /> property.</summary>
        private string _imageType;

        /// <summary>The type of image.</summary>
        public string ImageType
        {
            get
            {
                return this._imageType;
            }
            set
            {
                this._imageType = value;
            }
        }
        /// <summary>Backing field for <see cref="RetrievalUriList" /> property.</summary>
        private string[] _retrievalUriList;

        /// <summary>
        /// List of URIs where the raw image data can be accessed.
        /// </summary>
        public string[] RetrievalUriList
        {
            get
            {
                return this._retrievalUriList;
            }
            set
            {
                this._retrievalUriList = value;
            }
        }
        /// <summary>Backing field for <see cref="SizeBytes" /> property.</summary>
        private int? _sizeBytes;

        /// <summary>The size of the image in bytes.</summary>
        public int? SizeBytes
        {
            get
            {
                return this._sizeBytes;
            }
            set
            {
                this._sizeBytes = value;
            }
        }
        /// <summary>Backing field for <see cref="SourceUri" /> property.</summary>
        private string _sourceUri;

        /// <summary>
        /// The source URI points at the location of a the source image which is used to create/update image.
        /// </summary>
        public string SourceUri
        {
            get
            {
                return this._sourceUri;
            }
            set
            {
                this._sourceUri = value;
            }
        }
        /// <summary>Backing field for <see cref="Version" /> property.</summary>
        private Nutanix.Powershell.Models.IImageVersionStatus _version;

        /// <summary>The image version</summary>
        public Nutanix.Powershell.Models.IImageVersionStatus Version
        {
            get
            {
                return this._version;
            }
            set
            {
                this._version = value;
            }
        }
        /// <summary>Creates an new <see cref="ImageResourcesDefStatus" /> instance.</summary>
        public ImageResourcesDefStatus()
        {
        }
        /// <summary>Validates that this object meets the validation criteria.</summary>
        /// <param name="eventListener">an <see cref="Microsoft.Rest.ClientRuntime.IEventListener" /> instance that will receive validation
        /// events.</param>
        /// <returns>
        /// A <see cref="System.Threading.Tasks.Task" /> that will be complete when validation is completed.
        /// </returns>
        public async System.Threading.Tasks.Task Validate(Microsoft.Rest.ClientRuntime.IEventListener eventListener)
        {
            await eventListener.AssertObjectIsValid(nameof(Checksum), Checksum);
            await eventListener.AssertObjectIsValid(nameof(Version), Version);
        }
    }
    /// Describes the image status resources object.
    public partial interface IImageResourcesDefStatus : Microsoft.Rest.ClientRuntime.IJsonSerializable {
        string Architecture { get; set; }
        Nutanix.Powershell.Models.IChecksum Checksum { get; set; }
        string ImageType { get; set; }
        string[] RetrievalUriList { get; set; }
        int? SizeBytes { get; set; }
        string SourceUri { get; set; }
        Nutanix.Powershell.Models.IImageVersionStatus Version { get; set; }
    }
}