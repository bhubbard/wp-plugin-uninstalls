#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'prowc_ppbf_dashboard_widget_enabled'
wp option delete 'prowc_ppbf_products_list_columns'
wp option delete 'prowc_ppbf_total_params'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'prowc_ppbf_param_note_%'"
wp option delete 'woocommerce_version'
wp option delete 'prowc_ppbf_enabled'
wp option delete 'prowc_ppbf_filters_priority'
wp option delete 'prowc_ppbf_enable_plugin_urls'
wp option delete 'prowc_ppbf_rounding_enabled'
wp option delete 'prowc_ppbf_rounding_precision'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'prowc_ppbf_eval'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'prowc_ppbf_param_%'"
wp option delete 'prowc_ppbf_disable_for_empty_price'
wp option delete 'prowc_ppbf_check_for_product_changes_price'
wp option delete 'prowc_ppbf_disable_for_products'
wp option delete 'prowc_ppbf_disable_for_product_cats'
wp option delete 'prowc_ppbf_shortcodes_prefix'
wp option delete 'woocommerce_default_country'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset'"
wp option delete 'prowc_ppbf_version'
wp option delete 'prowc_ppbf_activation_time'
wp option delete 'prowc_ppbf_plugin_notice_nopemaybelater'
wp option delete 'prowc_ppbf_plugin_notice_remindlater'
wp option delete 'prowc_ppbf_plugin_reviewtrack'
wp option delete 'prowc_ppbf_plugin_notice_dismissed'
wp option delete 'prowc_ppbf_notice_remindlater_rating'
wp option delete 'prowc_ppbf_notice_dismissed_rating'
wp option delete 'prowc_ppbf_plugin_notice_alreadydid'

