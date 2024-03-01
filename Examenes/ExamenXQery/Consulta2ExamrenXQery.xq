<html>
<head><title>Consulta 2 neptune</title></head>
<body>
  <table border="2">
    <tr>
      <td>Referencia Proveedor</td>
      <td>Nombre Proveedor</td>
      <td>Dirección</td>
      <td>Código Postal</td>
      <td>País</td>
      <td>Teléfono</td>
    </tr>
    {
      for $prov in doc ("neptunoExamen.xml")//proveedores/proveedor
      where $prov/PaisProveedor = 'Francia'
      return
      <tr>
        <td>{$prov/string(ReferenciaProveedor)}</td>
        <td>{$prov/string(NombreProveedor)}</td>
        <td>{$prov/string(DireccionProveedor)}</td>
        <td>{$prov/string(CodigoPostal)}</td>
        <td>{$prov/string(PaisProveedor)}</td>
        <td>{$prov/string(TelefonoProveedor)}</td>
     </tr>    
    }
  </table>
</body>
</html>