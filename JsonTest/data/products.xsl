<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <!-- Định dạng đầu ra là HTML -->
  <xsl:output method="html" indent="yes"/>

  <!-- Mẫu chính để áp dụng cho toàn bộ tài liệu XML -->
  <xsl:template match="/products">
    <html>
      <head>
        <title>Danh sách sản phẩm</title>
        <style>
          body {
            font-family: Arial, sans-serif;
            margin: 20px;
          }
          table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
          }
          th, td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
          }
          th {
            background-color: #d9f7ff; /* Màu nền cho tiêu đề bảng */
            color:rgb(72, 72, 72); /* Màu chữ tiêu đề bảng */
            
          }
          tr:nth-child(even) {
            background-color: #f9f9f9;
          }
        </style>
      </head>
      <body>
        <table>
          <thead>
            <tr>
              <th>ID</th>
              <th>Tên sản phẩm</th>
              <th>Danh mục</th>
              <th>Giá</th>
            </tr>
          </thead>
          <tbody>
            <!-- Duyệt qua tất cả các sản phẩm trong XML -->
            <xsl:for-each select="product">
              <tr>
                <td><xsl:value-of select="id"/></td>
                <td><xsl:value-of select="name"/></td>
                <td><xsl:value-of select="category"/></td>
                <td><xsl:value-of select="price"/> VND</td>
              </tr>
            </xsl:for-each>
          </tbody>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
