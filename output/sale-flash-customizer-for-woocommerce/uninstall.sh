#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_version'
wp option delete 'alg_wc_sale_flash_customizer_global_enabled'
wp option delete 'alg_wc_sale_flash_customizer_per_product_enabled'
wp option delete 'alg_wc_sale_flash_customizer_per_product_cat_enabled'
wp option delete 'alg_wc_sale_flash_customizer_per_product_tag_enabled'
wp option delete 'alg_wc_sale_flash_customizer_hide_everywhere'
wp option delete 'alg_wc_sale_flash_customizer_hide_on_archives'
wp option delete 'alg_wc_sale_flash_customizer_hide_on_single'
wp option delete 'alg_wc_sale_flash_customizer_global_html'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_list'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_html'"
wp option delete 'alg_wc_sale_flash_customizer_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset'"
wp option delete 'active_sitewide_plugins'

