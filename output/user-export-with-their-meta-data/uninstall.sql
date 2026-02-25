-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('uewm_columns', 'uewm_use_custom_csv_settings', 'uewm_field_separator', 'uewm_text_qualifier', 'uewm_custom_field_separator', 'uewm_custom_text_qualifier', 'uewm_roles');
DELETE FROM wp_options WHERE option_name LIKE '%_queue_flush_rewrite_rules';

