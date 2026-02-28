<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>New Employee Account Created</title>
</head>
<body style="font-family: Arial, sans-serif; background-color: #f8f8f8; margin: 0; padding: 0;">
  <table width="100%" cellpadding="0" cellspacing="0" style="background-color: #f8f8f8; padding: 30px 0;">
    <tr>
      <td align="center">
        <table width="600" cellpadding="0" cellspacing="0" style="background-color: #ffffff; border-radius: 8px; overflow: hidden; border: 1px solid #e0e0e0;">
          
          <!-- Logo -->
          <tr>
            <td style="background-color: #fff; padding: 20px; text-align: center;">
              <img src="{{ url('assets/frontend/images/skin-canberra.svg') }}" alt="Skin Canberra" width="160">
            </td>
          </tr>

          <!-- Content -->
          <tr>
            <td style="padding: 30px;">
              <h2 style="color: #333333; margin-top: 0;">New Employee Account Created</h2>

              <p style="color: #555555; font-size: 15px;">
                Hello Admin,
              </p>

              <p style="color: #555555; font-size: 15px;">
                A new employee account has been successfully created in the system.
                Please find the details below:
              </p>

              <!-- Employee Details -->
              <table cellpadding="6" cellspacing="0" width="100%" style="border-collapse: collapse; margin-top: 15px;">
                <tr>
                  <td style="border: 1px solid #ddd;">Employee Name</td>
                  <td style="border: 1px solid #ddd;">{{ $employee_name }}</td>
                </tr>
                <tr>
                  <td style="border: 1px solid #ddd;">Employee Email</td>
                  <td style="border: 1px solid #ddd;">{{ $employee_email }}</td>
                </tr>
                <tr>
                  <td style="border: 1px solid #ddd;">Password</td>
                  <td style="border: 1px solid #ddd;">{{ $employee_password }}</td>
                </tr>
                <tr>
                  <td style="border: 1px solid #ddd;">Created On</td>
                  <td style="border: 1px solid #ddd;">{{ $created_at }}</td>
                </tr>
              </table>

              <p style="color: #555555; font-size: 15px; margin-top: 20px;">
                You can manage this employee from your admin dashboard.
              </p>

              <p style="color: #555555; font-size: 15px; margin-top: 25px;">
                Regards,<br>
                <strong>System Notification</strong>
              </p>
            </td>
          </tr>

          <!-- Footer -->
          <tr>
            <td style="background-color: #f1f1f1; padding: 15px; text-align: center; font-size: 12px; color: #777;">
              © {{ date('Y') }} Skin Canberra. All rights reserved.
            </td>
          </tr>

        </table>
      </td>
    </tr>
  </table>
</body>
</html>