#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_price_decimal_sep'
wp option delete 'woocommerce_price_thousand_sep'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'woocommerce_currency_pos'
wp option delete '_wlwl_settings'
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

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wlwl_spin_times'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wlwl_spin_times'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wlwl_spin_times'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wlwl_spin_times'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wlwl_email_coupons'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wlwl_email_coupons'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wlwl_email_coupons'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wlwl_email_coupons'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wlwl_email_labels'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wlwl_email_labels'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wlwl_email_labels'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wlwl_email_labels'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wlwl_email_mobile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wlwl_email_mobile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wlwl_email_mobile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wlwl_email_mobile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wlwl_unique_coupon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wlwl_unique_coupon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wlwl_unique_coupon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wlwl_unique_coupon'"
