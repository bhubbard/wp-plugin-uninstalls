-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qrlogin_del_http', 'qrlogin_timeout', 'qrlogin_poll_lifetime', 'qrlogin_post_timeout', 'qrlogin_login_timeout', 'qrlogin_qrcode_size', 'qrlogin_qrcode_fore_color', 'qrlogin_qrcode_back_color');

