#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'viw2s_params'
wp option delete 'viw2s_importing_arr_product'
wp option delete 'viw2s_importing_arr_product_categories'
wp option delete 'viw2s_history_import'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_weight_unit'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'viw2s_shopify_oauth_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_start_use'"
wp option delete 'villatheme_hide_admin_toolbar'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_viw2s_shop_cache_%' OR option_name LIKE '_site_transient_viw2s_shop_cache_%'"
wp transient delete 'viw2s_importing_arr_product'
wp transient delete 'villatheme_call'
wp transient delete 'villatheme_ads'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_hide_notices' OR option_name LIKE '_site_transient_%_hide_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_villatheme_hide_notices_%' OR option_name LIKE '_site_transient_villatheme_hide_notices_%'"
wp transient delete 'villatheme_notices'
wp transient delete 'villatheme_called'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_w2s_shopify_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_w2s_shopify_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_w2s_shopify_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_w2s_shopify_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_w2s_update_history'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_w2s_update_history'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_w2s_update_history'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_w2s_update_history'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shopify_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shopify_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shopify_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shopify_product_id'"
