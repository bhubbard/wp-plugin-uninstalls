-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'bookacti-install-date', 'bookacti_cron_key', 'bookacti_version', 'bookacti_db_version', 'bookacti_async_notifications', 'bookacti_latest_emails_sent', 'bookacti_general_settings', 'bookacti_cancellation_settings', 'bookacti_notifications_settings', 'bookacti_messages_settings', 'bookacti_licenses_settings', 'bookacti-5stars-rating-notice-dismissed', 'woocommerce_tax_display_shop', 'woocommerce_cart_redirect_after_add', 'woocommerce_myaccount_page_id', 'woocommerce_myaccount_bookings_endpoint', 'woocommerce_stock_email_recipient', 'bookacti_products_settings', 'bookacti_account_settings', 'bookacti_cart_settings', 'bookacti_secret_key', 'bookacti_secret_iv', 'bookacti_template_settings', 'bookacti_bookings_settings', 'bookacti_archive_secret_key', 'badp_license_status', 'banp_license_status', 'baaf_license_status', 'bara_license_status', 'bawl_license_status', 'bapap_license_status', 'woocommerce_tax_display_cart', 'bookacti_installing', 'bookacti_cart_item_not_restored_notices', 'bookacti_wc_incompatible_collations');
DELETE FROM wp_options WHERE option_name LIKE 'bookacti_notifications_settings_%';
DELETE FROM wp_options WHERE option_name LIKE '%_license_status';
DELETE FROM wp_options WHERE option_name LIKE 'bookacti_notif_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bookacti_bookings_calendar_settings', 'bookacti_status_filter', 'bookacti_secret_key', 'bookacti_bookings_export_settings', 'bookacti_ical_sequence', 'bookacti_default_template', 'bookacti_expiration_cart');
DELETE FROM wp_usermeta WHERE meta_key IN ('bookacti_bookings_calendar_settings', 'bookacti_status_filter', 'bookacti_secret_key', 'bookacti_bookings_export_settings', 'bookacti_ical_sequence', 'bookacti_default_template', 'bookacti_expiration_cart');
DELETE FROM wp_termmeta WHERE meta_key IN ('bookacti_bookings_calendar_settings', 'bookacti_status_filter', 'bookacti_secret_key', 'bookacti_bookings_export_settings', 'bookacti_ical_sequence', 'bookacti_default_template', 'bookacti_expiration_cart');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bookacti_bookings_calendar_settings', 'bookacti_status_filter', 'bookacti_secret_key', 'bookacti_bookings_export_settings', 'bookacti_ical_sequence', 'bookacti_default_template', 'bookacti_expiration_cart');

