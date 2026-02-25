-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('happycula-custom-user-pages-pages-login', 'happycula-custom-user-pages-pages-after-login', 'happycula-custom-user-pages-pages-after-logout', 'happycula-custom-user-pages-pages-register', 'happycula-custom-user-pages-pages-lostpassword', 'happycula-custom-user-pages-pages-resetpassword', 'happycula-custom-user-pages-pages-editprofile', 'happycula-custom-user-pages-pages-account', 'happycula-custom-user-pages-recaptcha-site-key', 'happycula-custom-user-pages-recaptcha-secret-key');
DELETE FROM wp_options WHERE option_name LIKE '%-pages-login';
DELETE FROM wp_options WHERE option_name LIKE '%-pages-after-login';
DELETE FROM wp_options WHERE option_name LIKE '%-pages-after-logout';
DELETE FROM wp_options WHERE option_name LIKE '%-pages-register';
DELETE FROM wp_options WHERE option_name LIKE '%-pages-lostpassword';
DELETE FROM wp_options WHERE option_name LIKE '%-pages-resetpassword';
DELETE FROM wp_options WHERE option_name LIKE '%-pages-editprofile';
DELETE FROM wp_options WHERE option_name LIKE '%-pages-account';
DELETE FROM wp_options WHERE option_name LIKE '%-recaptcha-site-key';
DELETE FROM wp_options WHERE option_name LIKE '%-recaptcha-secret-key';

