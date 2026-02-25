#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcct_posts_sample_ids'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_upsell_displayed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_xl_transient_%'"
wp option delete 'xlp_is_opted'
wp option delete '_site_transient_update_plugins'
wp option delete 'xlplugin_finale_lite_hide_update_notice'
wp option delete 'woocommerce_currency'
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_hold_stock_minutes'
wp option delete 'woocommerce_manage_stock'
wp option delete 'wcct_global_options'
wp option delete 'woocommerce_tax_display_shop'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'xl_licenses_%'"
wp option delete 'xl_admin_notices'
wp option delete 'xl_uninstall_reasons'
wp option delete 'xl_optin_ref'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_calc_taxes'
wp option delete 'woocommerce_enable_guest_checkout'
wp option delete 'xl_track_day'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_active'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%license_data'"

# Delete Transients
wp transient delete 'WCCT_INSTANCES'
wp transient delete 'update_plugins'
wp transient delete 'xl_get_modules'

# Clear Cron Jobs
wp cron event delete 'wcct_schedule_reset_state'
wp cron event delete 'wcct_clear_goaldeal_stock_meta_keys'
wp cron event delete 'wcct_maybe_schedule_check_license'
wp cron event delete 'xl_new_maybe_track_usage_scheduled'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcct_campaign_menu_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcct_campaign_menu_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcct_campaign_menu_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcct_campaign_menu_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcct_rule'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcct_rule'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcct_rule'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcct_rule'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcct_product_taxonomy_term_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcct_product_taxonomy_term_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcct_product_taxonomy_term_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcct_product_taxonomy_term_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcct_deal_units'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcct_deal_units'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcct_deal_units'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcct_deal_units'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcct_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcct_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcct_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcct_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcct_current_status_timing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcct_current_status_timing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcct_current_status_timing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcct_current_status_timing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expiry_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expiry_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expiry_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expiry_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_icl_lang_duplicate_of'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_icl_lang_duplicate_of'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_icl_lang_duplicate_of'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_icl_lang_duplicate_of'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_wc_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_wc_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_wc_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_wc_options'"
