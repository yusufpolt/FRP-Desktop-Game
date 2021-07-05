using BusinessLayer.Repository.Abstract;
using DataLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLayer.Repository.Concrete
{
    public class CityConcrete : IDatabaseRepository<Cities>
    {
        public void Delete(Cities entity)
        {
            throw new NotImplementedException();
        }

        public void Delete(int id)
        {
            throw new NotImplementedException();
        }

        public Cities Get(Expression<Func<Cities, bool>> expression)
        {
            throw new NotImplementedException();
        }

        public List<Cities> GetAll()
        {
            using (var db = new FrpDatabaseEntities())
            {
                var cities = db.Cities.OrderBy(c => c.City).ToList();
                cities.Insert(0, new Cities { CityId = 0, City = "Select..." });
                return cities;
            }
        }

        public List<Cities> GetAll(Expression<Func<Cities, bool>> expression)
        {
            throw new NotImplementedException();
        }

        public Cities GetById(int id)
        {
            throw new NotImplementedException();
        }

        public void Insert(Cities entity)
        {
            throw new NotImplementedException();
        }

        public void Update(Cities entity)
        {
            throw new NotImplementedException();
        }
    }
}
