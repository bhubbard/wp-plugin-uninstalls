#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'bookacti-install-date'
wp option delete 'bookacti_cron_key'
wp option delete 'bookacti_version'
wp option delete 'bookacti_db_version'
wp option delete 'bookacti_async_notifications'
wp option delete 'bookacti_latest_emails_sent'
wp option delete 'bookacti_general_settings'
wp option delete 'bookacti_cancellation_settings'
wp option delete 'bookacti_notifications_settings'
wp option delete 'bookacti_messages_settings'
wp option delete 'bookacti_licenses_settings'
wp option delete 'bookacti-5stars-rating-notice-dismissed'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'woocommerce_myaccount_bookings_endpoint'
wp option delete 'woocommerce_stock_email_recipient'
wp option delete 'bookacti_products_settings'
wp option delete 'bookacti_account_settings'
wp option delete 'bookacti_cart_settings'
wp option delete 'bookacti_secret_key'
wp option delete 'bookacti_secret_iv'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'bookacti_notifications_settings_%'"
wp option delete 'bookacti_template_settings'
wp option delete 'bookacti_bookings_settings'
wp option delete 'bookacti_archive_secret_key'
wp option delete 'badp_license_status'
wp option delete 'banp_license_status'
wp option delete 'baaf_license_status'
wp option delete 'bara_license_status'
wp option delete 'bawl_license_status'
wp option delete 'bapap_license_status'
wp option delete 'woocommerce_tax_display_cart'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_status'"

# Delete Transients
wp transient delete 'bookacti_installing'
wp transient delete 'bookacti_cart_item_not_restored_notices'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_bookacti_notif_%' OR option_name LIKE '_site_transient_bookacti_notif_%'"
wp transient delete 'bookacti_wc_incompatible_collations'

# Clear Cron Jobs
wp cron event delete 'bookacti_clean_expired_exports'
wp cron event delete 'bookacti_clean_latest_notifications'
wp cron event delete 'bookacti_hourly_event'
wp cron event delete 'bookacti_delete_expired_bookings'
wp cron event delete 'bookacti_cron_send_async_notifications'
wp cron event delete 'bookacti_send_async_new_user_notification'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bookacti_bookings_calendar_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bookacti_bookings_calendar_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bookacti_bookings_calendar_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bookacti_bookings_calendar_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bookacti_status_filter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bookacti_status_filter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bookacti_status_filter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bookacti_status_filter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bookacti_secret_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bookacti_secret_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bookacti_secret_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bookacti_secret_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bookacti_bookings_export_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bookacti_bookings_export_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bookacti_bookings_export_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bookacti_bookings_export_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bookacti_ical_sequence'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bookacti_ical_sequence'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bookacti_ical_sequence'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bookacti_ical_sequence'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bookacti_default_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bookacti_default_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bookacti_default_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bookacti_default_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bookacti_expiration_cart'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bookacti_expiration_cart'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bookacti_expiration_cart'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bookacti_expiration_cart'"
