-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dmmrd_enable_mode', 'dmmrd_custom_page_id', 'dmmrd_mode_scope', 'dmmrd_maintenance_type');

