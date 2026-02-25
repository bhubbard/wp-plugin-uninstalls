-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sidobe_wp_notif_options', 'sidobe_wp_notif_db_version');

