#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_tax_round_at_subtotal'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'epow_data'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'woocommerce_currency_pos'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_start_use'"
wp option delete 'villatheme_hide_admin_toolbar'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%'"

# Delete Transients
wp transient delete 'wc_featured_products'
wp transient delete 'villatheme_call'
wp transient delete 'villatheme_ads'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_hide_notices' OR option_name LIKE '_site_transient_%_hide_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_villatheme_hide_notices_%' OR option_name LIKE '_site_transient_villatheme_hide_notices_%'"
wp transient delete 'villatheme_notices'
wp transient delete 'villatheme_called'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'epow_global_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'epow_global_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'epow_global_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'epow_global_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'epow_form_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'epow_form_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'epow_form_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'epow_form_data'"
