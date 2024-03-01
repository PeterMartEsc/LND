<html>
<head><title>Consulta 1 neptune</title></head>
<body>
  <table border="2">
    <tr>
      <td>Referencia Proveedor</td>
      <td>Nombre Proveedor</td>
      <td>Pais Proveedor</td>
    </tr>
    {
      for $prov in doc ("neptuno.xml")//proveedores
      return
      <tr>
        <td>{$prov/string(ReferenciaProveedor)}</td>
        <td>{$prov/string(NombreProveedor)}</td>
        <td>{$prov/string(PaisProveedor)}</td>
     </tr>    
    }
  </table>
</body>
</html>