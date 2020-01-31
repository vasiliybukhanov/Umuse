using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    public class TrackModel
    {
        public int ID { get; set; }
        public string TrackName { get; set; }
        public int AlbumID { get; set; }
        public string AlbumName { get; set; }
        public int ArtistID { get; set; } 
        public string ArtistName { get; set; }
    }
}
