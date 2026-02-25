-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fresh_install', 'wplogin_google_key', 'wplogin_google_s_key', 'wplogin_google_type');

