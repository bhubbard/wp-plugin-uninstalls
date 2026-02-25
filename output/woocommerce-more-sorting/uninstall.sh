#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'alg_wc_more_sorting_enabled'
wp option delete 'woocommerce_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset'"
wp option delete 'alg_wc_more_sorting_custom_meta_sorting_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_more_sorting_custom_meta_sorting_enabled_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_more_sorting_custom_meta_sorting_meta_key_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_more_sorting_custom_meta_sorting_param_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_more_sorting_custom_meta_sorting_order_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_more_sorting_custom_meta_sorting_title_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_more_sorting_custom_meta_sorting_type_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_more_sorting_custom_meta_sorting_secondary_%'"
wp option delete 'alg_wc_more_sorting_restore_wc_default_theme'
wp option delete 'alg_wc_more_sorting_restore_wc_default_enabled'
wp option delete 'alg_wc_more_sorting_custom_sorting_enabled'
wp option delete 'alg_wc_more_sorting_rearrange_enabled'
wp option delete 'woocommerce_default_catalog_orderby'
wp option delete 'alg_wc_more_sorting_rearrange_sorting'
wp option delete 'active_sitewide_plugins'
wp option delete 'alg_wc_more_sorting_version'
wp option delete 'alg_wc_more_sorting_rearrange'

