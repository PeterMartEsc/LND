<html>
<head><title>Consulta 1 neptune</title></head>
<body>
  <table border="2">
    <tr>
      <td>Referencia Articulo</td>
      <td>Referencia Proveedor</td>
      <td>Nombre</td>
      <td>Categoría</td>
      <td>Precio Unidad</td>
      <td>Unidades</td>
    </tr>
    {
      for $arti in doc ("neptunoExamen.xml")//articulos/articulo
      where $arti/NombreCategoria = 'Bebidas'
      return
      <tr>
        <td>{$arti/string(RefArticulo)}</td>
        <td>{$arti/string(ReferenciaProveedor)}</td>
        <td>{$arti/string(NombreArticulo)}</td>
        <td>{$arti/string(NombreCategoria)}</td>
        <td>{$arti/string(PrecioUnidad)}</td>
        <td>{$arti/string(UnidadesExistencia)}</td>
     </tr>    
    }
  </table>
</body>
</html>