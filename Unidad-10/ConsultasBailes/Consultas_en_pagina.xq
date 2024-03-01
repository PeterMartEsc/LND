<html>
<head><title>Consulta en página</title></head>
<body>
  <table border="2">
    <tr>
      <td>Nombre baile</td>
      <td>Precio</td>    
    </tr>
    {
      for $baile in doc ("Bailes.xml")//bailes/baile 
      where $baile/number(precio) > 20
      return
        <tr>
          <td>{$baile/nombre/text()}</td>
          <td>{$baile/number(precio)}</td>
        </tr>  
    }
    </table>
</body>
</html>