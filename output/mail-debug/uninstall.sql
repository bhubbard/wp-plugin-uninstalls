-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mail_debug_version', 'mail_debug_adminonly', 'mail_debug_dbversion', 'mail_debug_redirect_to', 'site_name');

