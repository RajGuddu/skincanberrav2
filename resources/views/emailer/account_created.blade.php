<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Account Created</title>
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
              <h2 style="color: #333333; margin-top: 0;">Your Account Has Been Created</h2>

              <p style="color: #555555; font-size: 15px;">
                Hi {{ $employee_name }},
              </p>

              <p style="color: #555555; font-size: 15px;">
                Your employee account has been successfully created by the admin. 
                Below are your login credentials:
              </p>

              <!-- Credentials Table -->
              <table cellpadding="6" cellspacing="0" width="100%" style="border-collapse: collapse; margin-top: 15px;">
                <tr>
                  <td style="border: 1px solid #ddd;">Login Email</td>
                  <td style="border: 1px solid #ddd;">{{ $employee_email }}</td>
                </tr>
                <tr>
                  <td style="border: 1px solid #ddd;">Password</td>
                  <td style="border: 1px solid #ddd;">{{ $employee_password }}</td>
                </tr>
              </table>

              <!-- Login Button -->
              <div style="margin-top: 25px; text-align: center;">
                <a href="{{ url('/admin') }}" 
                   style="background-color: #006d6f; 
                          color: #ffffff; 
                          text-decoration: none; 
                          padding: 12px 24px; 
                          border-radius: 5px; 
                          display: inline-block;
                          font-size: 15px;">
                  Login Now
                </a>
              </div>

              <p style="color: #555555; font-size: 14px; margin-top: 20px;">
                For security reasons, we recommend changing your password after your first login.
              </p>

              <p style="color: #555555; font-size: 15px;">Warm regards,</p>
              <p style="color: #555555; font-size: 15px;"><strong>Team Skin Canberra</strong></p>
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