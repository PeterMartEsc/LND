<html>
<head><title>Consulta 4 Examen Neptune</title></head>
<body>
  <table border="2">
    <tr>
      <td>Referencia Pedidos</td>
      <td>Referencia Cliente</td>
      <td>Referencia Articulo</td>
      <td>Fecha Pedido</td>
    </tr>
    {
      for $clien in doc ("neptunoExamen.xml")//clientes/cliente
      where $clien/RefCliente = 'PICCO'
      return
      <tr>
        <td>{$clien/string(RefPedido)}</td>
        <td>{$clien/string(RefCliente)}</td>
        <td>{$clien/string(RefArticulo)}</td>
        <td>{$clien/string(FechaPedido)}</td>
     </tr>    
    }
  </table>
</body>
</html>