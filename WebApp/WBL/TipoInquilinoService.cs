using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BD;
using Entity;

namespace WBL
{
    public interface ITipoInquilinoService
    {
        //Task<BDEntity> create (TipoInquilinoEntity entity);

       // Task<DBEntity> Create(InquilinoEntity entity);

        Task<DBEntity> Create(TipoInquilinoEntity entity);
        Task<DBEntity> Delete(TipoInquilinoEntity entity);
        Task<IEnumerable<TipoInquilinoEntity>> Get();
        Task<TipoInquilinoEntity> GetById(TipoInquilinoEntity entity);
        Task<DBEntity> Update(TipoInquilinoEntity entity);
    }

    public class TipoInquilinoService : ITipoInquilinoService
    {
        private readonly IDataAccess sql;

        public TipoInquilinoService(IDataAccess _sql)
        {
            sql = _sql;
        }

        #region MetodosCrud

        //Metodo Get

        public async Task<IEnumerable<EmpleadoEntity>> Get()
        {
            try
            {
                var result = sql.QueryAsync<EmpleadoEntity>(sp: "exp.EmpleadoObtener");

                return await result;

            }
            catch (Exception)
            {

                throw;
            }


        }

        // Metodo GetById

        public async Task<EmpleadoEntity> GetById(EmpleadoEntity entity)
        {
            try
            {
                var result = sql.QueryFirstAsync<EmpleadoEntity>(sp: "EmpleadoObtener", Param: new

                { entity.IdEmpleado });

                return await result;

            }
            catch (Exception)
            {

                throw;
            }


        }

        // Metoto Create

        public async Task<DBEntity> Create(EmpleadoEntity entity)
        {
            try
            {
                var result = sql.ExecuteAsync(sp: "exp.EmpleadoInsertar", Param: new

                {
                    entity.Nombre,
                    entity.PrimerApellido,
                    entity.SegundoApellido,
                    entity.Edad,
                    entity.FechaNacimiento


                });

                return await result;

            }
            catch (Exception)
            {

                throw;
            }


        }


        // Metodo Update

        public async Task<DBEntity> Update(EmpleadoEntity entity)
        {
            try
            {
                var result = sql.ExecuteAsync(sp: "exp.EmpleadoActualizar", Param: new

                {
                    entity.IdEmpleado,
                    entity.Nombre,
                    entity.PrimerApellido,
                    entity.SegundoApellido,
                    entity.Edad,
                    entity.FechaNacimiento


                });

                return await result;

            }
            catch (Exception)
            {

                throw;
            }


        }


        // Metodo Eliminar

        public async Task<DBEntity> Delete(EmpleadoEntity entity)
        {
            try
            {
                var result = sql.ExecuteAsync(sp: "exp.EmpleadoEliminar", Param: new

                {
                    entity.IdEmpleado



                });

                return await result;

            }
            catch (Exception)
            {

                throw;
            }


        }


        #endregion



    }
}
