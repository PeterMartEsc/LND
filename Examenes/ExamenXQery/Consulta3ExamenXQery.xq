<html>
<head><title>Consulta 3 neptune</title></head>
<body>
  <table border="2">
    <tr>
      <td>Referencia Cliente</td>
      <td>Nombre Cliente</td>
      <td>Dirección</td>
      <td>Ciudad</td>
    </tr>
    {
      for $clien in doc ("neptunoExamen.xml")//clientes/cliente
      where $clien/CiudadCliente = 'Madrid'
      return
      <tr>
        <td>{$clien/string(RefCliente)}</td>
        <td>{$clien/string(NombreCliente)}</td>
        <td>{$clien/string(DireccionCliente)}</td>
        <td>{$clien/string(CiudadCliente)}</td>
     </tr>    
    }
  </table>
</body>
</html>