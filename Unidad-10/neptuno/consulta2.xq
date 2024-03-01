<html>
<head><title>Consulta 2 neptune</title></head>
<body>
  <table border="2">
    <tr>
      <td>Referencia Articulo</td>
      <td>Nombre Categoría</td>
      <td>Referencia Proveedor</td>
      <td>Nombre Artículo</td>
      <td>Precio Unidad</td>
      <td>Unidades</td>
    </tr>
    {
      for $prov in doc ("neptuno.xml")//articulos
      return
      <tr>
        <td>{$prov/string(RefArticulo)}</td>
        <td>{$prov/string(NombreCategoria)}</td>
        <td>{$prov/string(ReferenciaProveedor)}</td>
        <td>{$prov/string(NombreArticulo)}</td>
        <td>{$prov/string(PrecioUnidad)}</td>
        <td>{$prov/string(UnidadesExistencia)}</td>
     </tr>    
    }
  </table>
</body>
</html>