-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sslcare_notification', 'enable_plugin', 'sslcare_api_version', 'enable_unicode_sms', 'sslcare_pending_alert', 'sslcare_processing_alert', 'sslcare_onhold_alert', 'sslcare_failed_alert', 'sslcare_canceled_alert', 'sslcare_completed_alert', 'sslcare_refund_alert', 'sslcare_partial_alert', 'sslcare_shipped_alert', 'sslcare_admin_sms_alert', 'sslcare_plugin_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sslcare_login_phone', 'billing_phone', '_customer_user', '_billing_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('sslcare_login_phone', 'billing_phone', '_customer_user', '_billing_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('sslcare_login_phone', 'billing_phone', '_customer_user', '_billing_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sslcare_login_phone', 'billing_phone', '_customer_user', '_billing_phone');

