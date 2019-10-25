using System.Threading.Tasks;
using System.Collections.Generic;
using backend.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace backend.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TipoUsuarioController : ControllerBase
    {   
        GufosContext _contexto = new GufosContext();
        [HttpGet]
        public async Task<ActionResult<List<TipoUsuario>>> Get()
        {
            var tipousuarios = await _contexto.TipoUsuario.ToListAsync();

            if (tipousuarios == null)
            {
                return NotFound();
            }

            return tipousuarios;
        }
        [HttpGet("{id}")]
        public async Task<ActionResult<TipoUsuario>> Get(int id)
        {
            var tipousuario = await _contexto.TipoUsuario.FindAsync(id);

            if (tipousuario == null)
            {
                return NotFound();
            }
            return tipousuario;
        }
    }
}