<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
   <xsl:template match="/">
      <html>
         <head>
            <title>Question 4</title>
           <style>
    body {
        background-color: lightblue;
        color: crimson;
    }
    button {
        color: green;
    }
</style>
</head>
   <body>
      
         <table border='5'>
            <tr>
                  <th>Country name</th>
                  <th>Government</th>
                  <th>Total GDP</th>
                  <th>Capital</th>
                  <th>Population in 2011</th>
            </tr>
            <xsl:for-each select="/mondial/country">
               <tr>
                  <td><xsl:value-of select="name"/> </td>
                  <td><xsl:value-of select="government"/> </td> 
                  <td><xsl:value-of select="gdp_total"/> </td>
                  <td><xsl:value-of select="@capital"/> </td> 
                  <td><xsl:value-of select="population[@year='2011']"/> </td>                  
               </tr>
            </xsl:for-each >
         </table>
    
         </body>
      </html>
   </xsl:template>
</xsl:stylesheet>