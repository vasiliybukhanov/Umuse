using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    public class AlbumModel
    {
        public int ID { get; set; }
        public string AlbumName { get; set; }
        public int ReleaseYear { get; set; }
        public int GenreID { get; set; }
        public string GenreName { get; set; }
        public int ArtistID { get; set; }
        public string ArtistName { get; set; }
    }
}
