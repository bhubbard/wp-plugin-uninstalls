-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wml_review', 'wml_db_version', 'wpv_wml_settings', 'wml_remind_later');

