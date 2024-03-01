<html>
<head><title>Consulta 3 neptune</title></head>
<body>
  <table border="2">
    <tr>
      <td>Referencia Cliente</td>
      <td>Dirección Cliente</td>
      <td>Nombre Cliente</td>
      <td>Ciudad Cliente</td>
      <td>Código Postal Cliente</td>
      <td>Pais Cliente</td>
      <td>Teléfono Cliente</td>
    </tr>
    {
      for $prov in doc ("neptuno.xml")//clientes
      return
      <tr>
        <td>{$prov/string(RefCliente)}</td>
        <td>{$prov/string(DireccionCliente)}</td>
        <td>{$prov/string(NombreCliente)}</td>
        <td>{$prov/string(CiudadCliente)}</td>
        <td>{$prov/string(CodPostalCliente)}</td>
        <td>{$prov/string(TelefornoCliente)}</td>
     </tr>    
    }
  </table>
</body>
</html>