#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woo_bopo_bundle_params'
wp option delete 'woocommerce_tax_display_shop'
wp option delete '_bopobb_cart_contents_count'
wp option delete 'woocommerce_tax_round_at_subtotal'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_start_use'"
wp option delete 'villatheme_hide_admin_toolbar'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%'"

# Delete Transients
wp transient delete 'villatheme_call'
wp transient delete 'villatheme_ads'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_hide_notices' OR option_name LIKE '_site_transient_%_hide_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_villatheme_hide_notices_%' OR option_name LIKE '_site_transient_villatheme_hide_notices_%'"
wp transient delete 'villatheme_notices'
wp transient delete 'villatheme_called'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bopobb_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bopobb_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bopobb_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bopobb_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bopobb_shipping_fee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bopobb_shipping_fee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bopobb_shipping_fee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bopobb_shipping_fee'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bopobb_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bopobb_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bopobb_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bopobb_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'bopobb_item_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'bopobb_item_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'bopobb_item_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'bopobb_item_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
