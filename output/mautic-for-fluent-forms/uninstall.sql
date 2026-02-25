-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_fluentform_mautic_settings', 'fluentform_global_modules_status');

