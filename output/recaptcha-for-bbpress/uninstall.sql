-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rfb_bbp_recaptcha_registerd_user', '_bbp_allow_anonymous', 'rfb_bbp_recaptcha_site_key', 'rfb_bbp_recaptcha_server_key');

