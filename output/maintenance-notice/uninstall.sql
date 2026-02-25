-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('maintenance_notice_options', 'maintenance_notice_activated_time', 'maintenance-notice-admin-notice');

