-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bani_widget_hash_mismatch', 'bani_widget_verified_hash', 'bani_last_security_alert_time', 'bani_security_alerts', 'bani_url_violation_log', 'bani_amount_tampering_log', 'woocommerce_bani_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

