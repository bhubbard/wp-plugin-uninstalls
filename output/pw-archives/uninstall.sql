-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pw_archives_upgrade', 'PW_Archives_options', 'widget_pw_archives', 'pw_archives', 'PW_Alerts');

