-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('emc2_editor_insert_p', 'emc2pm_activate_date');

