// Capturamos los elementos del HTML
const pokemonInput = document.getElementById('pokemonInput');
const searchBtn = document.getElementById('searchBtn');
const statusDiv = document.getElementById('status');
const resultDiv = document.getElementById('result');

// Escuchamos el evento click del botón
searchBtn.addEventListener('click', async () => {
  const name = pokemonInput.value.trim().toLowerCase();
  resultDiv.innerHTML = '';
  
  // Validar si el campo está vacío
  if (!name) {
    statusDiv.innerHTML = '<p class="error">Por favor ingresa el nombre de un pokémon.</p>';
    return;
  }

  // Mostrar mensaje de carga obligatorio
  statusDiv.innerHTML = '<p class="loading">Cargando...</p>';

  try {
    // Petición HTTP GET a la PokeAPI usando fetch
    const response = await fetch(`https://pokeapi.co/api/v2/pokemon/${name}`);
    
    // Validar si la respuesta es exitosa (response.ok)
    if (!response.ok) {
      throw new Error('El pokémon no existe o ocurrió un error en la búsqueda.');
    }

    const data = await response.json();
    statusDiv.innerHTML = ''; // Limpiamos el mensaje de carga

    // Conversiones requeridas por la práctica:
    // La API entrega el peso en hectogramos -> Dividimos entre 10 para obtener kg.
    // La API entrega la altura en decímetros -> Dividimos entre 10 para obtener metros.
    const pesoKg = data.weight / 10;
    const alturaM = data.height / 10;
    
    // Obtenemos los tipos del pokémon combinándolos en un texto
    const tipos = data.types.map(t => t.type.name).join(', ');

    // Mostramos los resultados en la tarjeta de pantalla
    resultDiv.innerHTML = `
      <div class="card">
        <h2>${data.name.toUpperCase()}</h2>
        <img src="${data.sprites.front_default}" alt="${data.name}">
        <p><strong>Tipos:</strong> ${tipos}</p>
        <p><strong>Peso:</strong> ${pesoKg} kg</p>
        <p><strong>Altura:</strong> ${alturaM} m</p>
      </div>
    `;

  } catch (error) {
    // Si falla la petición o el pokémon no existe, mostramos el mensaje claro de error
    statusDiv.innerHTML = `<p class="error">${error.message}</p>`;
  }
});