-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('muv-kk-api-key', 'muv-kk-zugang-loeschen', 'muv-kk-erlaube-pseudo-login', 'muv-kk-login-domain', 'muv-kk-logout', 'muv-kk-email-von-name', 'muv-kk-email-von-mail', 'muv-kk-email-vorlage-logo', 'muv-kk-email-vorlage-footer', 'muv-kk-email-vorlage-color', 'muv-kk-email-vorlage-color-text', 'muv-kk-email-vorlage-bgcolor-body', 'muv-kk-email-vorlage-bgcolor-content', 'muv-kk-email-vorlage-konto-aktivieren-betreff', 'muv-kk-email-vorlage-konto-aktivieren-typ', 'muv-kk-email-vorlage-konto-aktivieren-text', 'muv-kk-email-vorlage-konto-aktivieren-html', 'muv-kk-email-vorlage-pwd-vergessen-betreff', 'muv-kk-email-vorlage-pwd-vergessen-typ', 'muv-kk-email-vorlage-pwd-vergessen-text', 'muv-kk-email-vorlage-pwd-vergessen-html', 'muv-kk-email-vorlage-pwd-geaendert-betreff', 'muv-kk-email-vorlage-pwd-geaendert-typ', 'muv-kk-email-vorlage-pwd-geaendert-text', 'muv-kk-email-vorlage-pwd-geaendert-html', 'muv-kk-email-vorlage-email-aktivieren-betreff', 'muv-kk-email-vorlage-email-aktivieren-typ', 'muv-kk-email-vorlage-email-aktivieren-text', 'muv-kk-email-vorlage-email-aktivieren-html', 'muv-kk-email-vorlage-email-geaendert-betreff', 'muv-kk-email-vorlage-email-geaendert-typ', 'muv-kk-email-vorlage-email-geaendert-text', 'muv-kk-email-vorlage-email-geaendert-html', 'muv-kk-email-vorlage-konto-loeschen-betreff', 'muv-kk-email-vorlage-konto-loeschen-typ', 'muv-kk-email-vorlage-konto-loeschen-text', 'muv-kk-email-vorlage-konto-loeschen-html');
DELETE FROM wp_options WHERE option_name LIKE '%-betreff';
DELETE FROM wp_options WHERE option_name LIKE '%-typ';
DELETE FROM wp_options WHERE option_name LIKE '%-html';
DELETE FROM wp_options WHERE option_name LIKE '%-text';

