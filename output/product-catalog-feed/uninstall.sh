#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpwoof_feedlist_%'"
wp option delete 'wpwoofeed_errors'
wp option delete 'mashsb_settings'
wp option delete 'woocommerce_calc_taxes'
wp option delete 'wpwoof-global-data'
wp option delete 'wpwoof-global-google-category'
wp option delete 'wpwoof_schedule'
wp option delete 'cron'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_price_decimal_sep'
wp option delete 'woocommerce_price_display_suffix'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'woocommerce_price_thousand_sep'
wp option delete 'woocommerce_manage_stock'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'woocommerce_tax_based_on'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ignore'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_notice_ignore'"
wp option delete 'WPWOOF_DEBUG'
wp option delete 'wpwoof_message'
wp option delete 'wpwoof_permissions_role'
wp option delete 'wpwoof_notice_actions'
wp option delete 'pcbpys_license_status'
wp option delete 'WPWOOF_DB_VERSION'

# Delete Transients
wp transient delete 'products_meta_keys'

# Clear Cron Jobs
wp cron event delete 'wpwoof_generate_feed'
wp cron event delete 'wpwoof_feed_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woocommerce_wpwoof_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woocommerce_wpwoof_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woocommerce_wpwoof_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woocommerce_wpwoof_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_variation_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_variation_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_variation_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_variation_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mashsb_og_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mashsb_og_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mashsb_og_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mashsb_og_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mashsb_pinterest_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mashsb_pinterest_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mashsb_pinterest_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mashsb_pinterest_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'feed_google_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'feed_google_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'feed_google_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'feed_google_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_trial_length'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_trial_length'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_trial_length'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_trial_length'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_sign_up_fee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_sign_up_fee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_sign_up_fee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_sign_up_fee'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woosvi_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woosvi_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woosvi_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woosvi_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpfoof-exclude-product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpfoof-exclude-product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpfoof-exclude-product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpfoof-exclude-product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpwoofgoogle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpwoofgoogle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpwoofgoogle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpwoofgoogle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wpwoof%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wpwoof%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wpwoof%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wpwoof%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpwoofextra'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpwoofextra'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpwoofextra'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpwoofextra'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpwoofadsensecustom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpwoofadsensecustom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpwoofadsensecustom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpwoofadsensecustom'"
