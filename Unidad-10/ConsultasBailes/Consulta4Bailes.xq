for $baile in doc ("Bailes.xml")//bailes/baile
where $baile/nombre[contains(text(), 'a')]

return
<baile>
<nombre>{$baile/nombre/text()}</nombre>
</baile>