<html>
<head><title>Consulta 4 neptune</title></head>
<body>
  <table border="2">
    <tr>
      <td>Referencia Artículo</td>
      <td>Nombre Artículo</td>
      <td>Referencia Proveedor</td>
      <td>Nombre Proveedor</td>
    </tr>
    {
      for $prov in doc ("neptuno.xml")//artículo
      return
      <tr>
        <td>{$prov/string(RefArticulo)}</td>
        <td>{$prov/string(NombreArticulo)}</td>
      </tr>  
    }
      from $prov in doc("neptuno.xml")//proveedores
      return
      <tr>
        <td>{$prov/string(ReferenciaProveedor)}</td>
        <td>{$prov/string(NombreProveedor)}</td>
     </tr>    
    }
  </table>
</body>
</html>