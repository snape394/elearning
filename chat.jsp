<html>
  <head>
    <meta http-equiv="Content-Language" content="en-us" />

    <title>Simple Chat Application</title>
  </head>

  <body>
    <form action="main.jsp">
      <table border="1" cellpadding="0" cellspacing="0"
      style="border-collapse: collapse" bordercolor="#111111"
      width="33%" id="AutoNumber1">
        <tbody>
          <tr>
            <td width="100%" colspan="2" bgcolor="#0000FF">
              <p align="center">
                <b>
                  <font size="4" color="#FFFFFF">Chat Login</font>
                </b>
              </p>
            </td>
          </tr>

          <tr>
            <td width="23%">User ID</td>

            <td width="77%">
              <input type="text" name="uid" size="20" />
            </td>
          </tr>

          <tr>
            <td width="100%" colspan="2">
              <p align="center">
                <input type="submit" value="Submit"
                name="action" />

                <input type="reset" value="Reset" />
              </p>
            </td>
          </tr>
        </tbody>
      </table>

      <p>&#160;</p>
    </form>

    <p>
      <i>Note: You may use any User ID you wish</i>
    </p>
  </body>
</html>