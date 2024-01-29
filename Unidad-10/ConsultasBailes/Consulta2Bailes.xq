for $baile in doc("Bailes.xml")//bailes/baile
return
<baile>
<nombre>{$baile/nombre/text()}</nombre>
<precio>{$baile/precio/text()}</precio>
</baile>