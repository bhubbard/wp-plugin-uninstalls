-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dupadc_settings', 'dupadc_cleanup_activity_log', 'dupadc_admin_notice');

