-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_woie_settings_obj', 'woie_options', 'woie_filter_meta_keys', 'woie_versions_type');

