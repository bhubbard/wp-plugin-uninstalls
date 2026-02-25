#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpbot_deactivation_reason_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpbot_deactivation_details_%'"
wp option delete 'ot_css_file_paths'
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'qcld_express_options'
wp option delete 'qcld_woo_minmax_enable_plugin'
wp option delete 'qcld_woo_minmax_dynamic_pricing_setting'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_db_version'
wp option delete 'qcld_express_plugin_do_activation_redirect'
wp option delete 'woocommerce_enable_lightbox'
wp option delete 'woocommerce_enable_ajax_add_to_cart'
wp option delete 'woocommerce_enable_guest_checkout'
wp option delete 'qcld_woo_minmax_category_quantity_limit'
wp option delete 'qcld_woo_minmax_tag_quantity_limit'
wp option delete 'qcld_woo_minmax_product_quantity_limit'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'qcld_woo_minmax_tag_minimum_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'qcld_woo_minmax_tag_maximum_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'qcld_woo_minmax_tag_step_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'qcld_woo_minmax_category_minimum_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'qcld_woo_minmax_category_maximum_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'qcld_woo_minmax_category_step_%'"
wp option delete 'qcld_woo_minmax_product_minimum_quantity'
wp option delete 'qcld_woo_minmax_product_maximum_quantity'
wp option delete 'qcld_woo_minmax_product_step_quantity'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_format_link_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_format_link_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_format_link_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_format_link_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_format_quote_source_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_format_quote_source_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_format_quote_source_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_format_quote_source_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_qcld_woo_minmax_category_exclusion'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_qcld_woo_minmax_category_exclusion'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_qcld_woo_minmax_category_exclusion'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_qcld_woo_minmax_category_exclusion'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_qcld_woo_minmax_tag_exclusion'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_qcld_woo_minmax_tag_exclusion'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_qcld_woo_minmax_tag_exclusion'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_qcld_woo_minmax_tag_exclusion'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_limit_override'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_limit_override'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_limit_override'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_limit_override'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_qcld_woo_minmax_tag_minimum_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_qcld_woo_minmax_tag_minimum_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_qcld_woo_minmax_tag_minimum_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_qcld_woo_minmax_tag_minimum_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_qcld_woo_minmax_tag_maximum_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_qcld_woo_minmax_tag_maximum_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_qcld_woo_minmax_tag_maximum_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_qcld_woo_minmax_tag_maximum_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_qcld_woo_minmax_tag_step_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_qcld_woo_minmax_tag_step_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_qcld_woo_minmax_tag_step_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_qcld_woo_minmax_tag_step_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_qcld_woo_minmax_category_minimum_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_qcld_woo_minmax_category_minimum_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_qcld_woo_minmax_category_minimum_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_qcld_woo_minmax_category_minimum_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_qcld_woo_minmax_category_maximum_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_qcld_woo_minmax_category_maximum_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_qcld_woo_minmax_category_maximum_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_qcld_woo_minmax_category_maximum_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_qcld_woo_minmax_category_step_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_qcld_woo_minmax_category_step_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_qcld_woo_minmax_category_step_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_qcld_woo_minmax_category_step_%'"
