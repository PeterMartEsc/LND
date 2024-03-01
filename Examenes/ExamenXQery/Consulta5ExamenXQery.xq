<html>
<head><title>Consulta 5 Examen Neptune</title></head>
<body>
  <table border="2">
    <tr>
      <td>Referencia Articulo</td>
      <td>Nombre Articulo</td>
      <td>Referencia Proveedor</td>
      <td>Nombre Proveedor</td>
    </tr>
    {
      for $arti in doc ("neptunoExamen.xml")//articulos/articulo
      where $arti/NombreCategoria = 'Bebidas'
      return
      <tr>
        <td>{$arti/string(RefArticulo)}</td>
        <td>{$arti/string(NombreArticulo)}</td>
        <td>{$arti/string(ReferenciaProveedor)}</td>
     </tr>    
    }
  </table>
</body>
</html>