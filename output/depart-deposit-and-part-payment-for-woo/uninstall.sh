#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'depart_deposit_setting'
wp option delete 'depart_payment_plan'
wp option delete 'depart_deposit_rule'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'woocommerce_checkout_pay_endpoint'
wp option delete 'woocommerce_checkout_order_received_endpoint'
wp option delete 'woocommerce_checkout_order_pay_endpoint'
wp option delete 'woocommerce_allow_bulk_remove_personal_data'
wp option delete 'woocommerce_feature_custom_order_tables_enabled'
wp option delete 'woocommerce_custom_orders_table_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_start_use'"
wp option delete 'villatheme_hide_admin_toolbar'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%'"
wp option delete 'woocommerce_email_footer_text'

# Delete Transients
wp transient delete 'villatheme_call'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_hide_notices' OR option_name LIKE '_site_transient_%_hide_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_villatheme_hide_notices_%' OR option_name LIKE '_site_transient_villatheme_hide_notices_%'"
wp transient delete 'villatheme_notices'
wp transient delete 'villatheme_called'
wp transient delete 'villatheme_ads'

# Clear Cron Jobs
wp cron event delete 'depart_order_check_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'viwec_settings_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'viwec_settings_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'viwec_settings_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'viwec_settings_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'viwec_email_structure'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'viwec_email_structure'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'viwec_email_structure'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'viwec_email_structure'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'depart_custom_plans'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'depart_custom_plans'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'depart_custom_plans'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'depart_custom_plans'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'depart_exists_plans'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'depart_exists_plans'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'depart_exists_plans'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'depart_exists_plans'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'depart_deposit_disabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'depart_deposit_disabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'depart_deposit_disabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'depart_deposit_disabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'depart_deposit_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'depart_deposit_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'depart_deposit_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'depart_deposit_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_trash_meta_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_trash_meta_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_trash_meta_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_trash_meta_time'"
