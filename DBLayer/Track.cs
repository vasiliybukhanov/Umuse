//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DBLayer
{
    using System;
    using System.Collections.Generic;
    
    public partial class Track
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Track()
        {
            this.Playlist = new HashSet<Playlist>();
        }
    
        public int ID { get; set; }
        public string TrackName { get; set; }
        public int ArtistID { get; set; }
        public Nullable<int> AlbumID { get; set; }
    
        public virtual Album Album { get; set; }
        public virtual Artist Artist { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Playlist> Playlist { get; set; }
    }
}
