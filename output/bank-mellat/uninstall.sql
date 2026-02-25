-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bank_mellat_settings_fields_arrays', 'bank_mellat_db_version');

