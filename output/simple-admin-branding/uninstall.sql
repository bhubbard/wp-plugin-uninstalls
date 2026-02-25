-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simple_wplogin_logo_header_msg', 'simple_wplogin_logo_footer');

