using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DBLayer;
using Models;

namespace Services
{
    public class GenreService
    {
        public IEnumerable<GenreModel> FindManyGenres()
        {
            using (UmuseEntities context = new UmuseEntities())
            {
                var rawEntities = (from g in context.Genre select g).ToArray();
                var models = (from g in rawEntities
                              select new GenreModel()
                              {
                                  ID = g.ID,
                                  GenreName = g.GenreName
                              }).ToArray();

                return models;
            }
        }

        public GenreModel FindGenreById(int id)
        {
            using (UmuseEntities context = new UmuseEntities())
            {
                var rawEntity = (from g in context.Genre where g.ID == id select g).FirstOrDefault();
                var model = new GenreModel() { ID = rawEntity.ID, GenreName = rawEntity.GenreName };
                return model;
            }
        }
    }
}
