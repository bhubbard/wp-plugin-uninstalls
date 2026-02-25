-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sbsc_custom_mappings', 'sbsc_settings', 'sbsc_activation_notice');

