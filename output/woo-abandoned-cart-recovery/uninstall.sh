#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'wacv_last_export_customer_emails'
wp option delete 'wacv_params'
wp option delete 'wacv_hide_notice'
wp option delete 'wacv_dismiss_notice'
wp option delete 'wacv_private_key'
wp option delete 'test_log_1'
wp option delete 'test_log_2'
wp option delete 'wacv_time_range'
wp option delete 'wacv_cron_key'
wp option delete 'wacv_check_balance'
wp option delete 'wacv_unsubscribe_endpoint'
wp option delete 'woocommerce_shop_page_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_start_use'"
wp option delete 'villatheme_hide_admin_toolbar'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%'"

# Delete Transients
wp transient delete 'villatheme_call'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_hide_notices' OR option_name LIKE '_site_transient_%_hide_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_villatheme_hide_notices_%' OR option_name LIKE '_site_transient_villatheme_hide_notices_%'"
wp transient delete 'villatheme_notices'
wp transient delete 'villatheme_called'
wp transient delete 'villatheme_ads'

# Clear Cron Jobs
wp cron event delete 'wacv_execute_cron'
wp cron event delete 'wacv_remove_abandoned_cart'
wp cron event delete 'wacv_delete_coupon'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wacv_email_settings_new'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wacv_email_settings_new'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wacv_email_settings_new'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wacv_email_settings_new'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wacv_email_html_edit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wacv_email_html_edit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wacv_email_html_edit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wacv_email_html_edit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wacv_background_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wacv_background_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wacv_background_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wacv_background_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wacv_template_used'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wacv_template_used'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wacv_template_used'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wacv_template_used'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wacv_email_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wacv_email_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wacv_email_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wacv_email_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wacv_user_ref'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wacv_user_ref'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wacv_user_ref'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wacv_user_ref'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
