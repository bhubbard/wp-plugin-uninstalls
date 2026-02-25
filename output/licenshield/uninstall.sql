-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('licenshield_stripe_mode', 'licenshield_stripe_test_public', 'licenshield_stripe_test_secret', 'licenshield_stripe_live_public', 'licenshield_stripe_live_secret', 'licenshield_stripe_webhook_secret', 'licenshield_company_name', 'licenshield_support_email', 'licenshield_admin_notification_email', 'licenshield_delete_data_on_uninstall', 'licenshield_license_prefix', 'licenshield_success_redirect', 'licenshield_cancel_redirect', 'licenshield_db_version', 'licenshield_seen_tours', 'licenshield_wizard_complete', 'licenshield_wizard_welcome_seen', 'licenshield_wizard_sdk_confirmed', 'licenshield_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE '%_secret';
DELETE FROM wp_options WHERE option_name LIKE '%_public';

