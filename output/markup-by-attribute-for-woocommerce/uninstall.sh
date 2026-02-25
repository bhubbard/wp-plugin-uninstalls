#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mt2mba_max_variations'
wp option delete 'mt2mba_db_version'
wp option delete 'mt2mba_desc_behavior'
wp option delete 'mt2mba_dropdown_behavior'
wp option delete 'mt2mba_include_attrb_name'
wp option delete 'mt2mba_hide_base_price'
wp option delete 'mt2mba_sale_price_markup'
wp option delete 'mt2mba_round_markup'
wp option delete 'mt2mba_allow_zero'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mt2mba_current_base_%' OR option_name LIKE '_site_transient_mt2mba_current_base_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wc_var_prices_%' OR option_name LIKE '_site_transient_wc_var_prices_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'mt2mba_base_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'mt2mba_base_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'mt2mba_base_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'mt2mba_base_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mt2mba_markup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mt2mba_markup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mt2mba_markup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mt2mba_markup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mt2mba_base_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mt2mba_base_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mt2mba_base_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mt2mba_base_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mt2mba_base_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mt2mba_base_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mt2mba_base_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mt2mba_base_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_min_variation_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_min_variation_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_min_variation_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_min_variation_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_max_variation_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_max_variation_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_max_variation_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_max_variation_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_min_variation_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_min_variation_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_min_variation_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_min_variation_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_max_variation_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_max_variation_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_max_variation_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_max_variation_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_min_variation_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_min_variation_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_min_variation_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_min_variation_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_max_variation_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_max_variation_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_max_variation_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_max_variation_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_markup_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_markup_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_markup_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_markup_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'mt2mba_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'mt2mba_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'mt2mba_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'mt2mba_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
