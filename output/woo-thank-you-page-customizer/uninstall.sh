#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'woo_thank_you_page_params'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_price_decimal_sep'
wp option delete 'woocommerce_price_thousand_sep'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'woocommerce_currency_pos'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_start_use'"
wp option delete 'villatheme_hide_admin_toolbar'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%'"

# Delete Transients
wp transient delete 'woocommerce_thank_you_page_customizer_items_removed_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_woocommerce_thank_you_page_customizer_send_email_%' OR option_name LIKE '_site_transient_woocommerce_thank_you_page_customizer_send_email_%'"
wp transient delete 'villatheme_call'
wp transient delete 'villatheme_ads'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_hide_notices' OR option_name LIKE '_site_transient_%_hide_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_villatheme_hide_notices_%' OR option_name LIKE '_site_transient_villatheme_hide_notices_%'"
wp transient delete 'villatheme_notices'
wp transient delete 'villatheme_called'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wtypc_unique_coupon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wtypc_unique_coupon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wtypc_unique_coupon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wtypc_unique_coupon'"
