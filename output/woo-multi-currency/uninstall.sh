#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wmc_selected_currencies'
wp option delete 'wmc_currency_by_country'
wp option delete 'wmc_oder_id'
wp option delete 'wmc_email'
wp option delete 'wmc_enable_approxi'
wp option delete 'wmc_price_by_currency'
wp option delete 'wmc_allow_multi'
wp option delete 'woo_multi_currency_params'
wp option delete 'woo_multi_currency_old_version'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_tax_round_at_subtotal'
wp option delete 'woocommerce_tax_total_display'
wp option delete 'woocommerce_price_decimal_sep'
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_price_num_decimals'
wp option delete '_cfw__settings'
wp option delete 'woocommerce_tax_display_shop'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_start_use'"
wp option delete 'villatheme_hide_admin_toolbar'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%'"
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'learnpress_version'
wp option delete 'vpc-license-key'
wp option delete '_woosb_price_format'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'awdr_compatibility'
wp option delete 'woocommerce_price_thousand_sep'
wp option delete 'yith-wfbt-discount-name'

# Delete Transients
wp transient delete 'wmc_update_exchange_rate'
wp transient delete 'villatheme_call'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_hide_notices' OR option_name LIKE '_site_transient_%_hide_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_villatheme_hide_notices_%' OR option_name LIKE '_site_transient_villatheme_hide_notices_%'"
wp transient delete 'villatheme_notices'
wp transient delete 'villatheme_called'
wp transient delete 'villatheme_ads'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wmc_order_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wmc_order_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wmc_order_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wmc_order_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wmc_vicatna_nyp_min_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wmc_vicatna_nyp_min_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wmc_vicatna_nyp_min_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wmc_vicatna_nyp_min_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wmc_vicatna_nyp_max_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wmc_vicatna_nyp_max_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wmc_vicatna_nyp_max_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wmc_vicatna_nyp_max_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcbp_bundle_prod_pricing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcbp_bundle_prod_pricing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcbp_bundle_prod_pricing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcbp_bundle_prod_pricing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_EventCost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_EventCost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_EventCost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_EventCost'"
