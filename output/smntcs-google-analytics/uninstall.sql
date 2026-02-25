-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smntcs_google_analytics_tracking_code', 'smntcs_google_analytics_ip_anonymization');

