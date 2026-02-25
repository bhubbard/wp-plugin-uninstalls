-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rwc_coupon_exporter_errors', 'rwc_coupon_exporter_activated');

