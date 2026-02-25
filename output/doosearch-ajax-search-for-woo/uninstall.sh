#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'doosearchas_search_main_options'
wp option delete 'doosearchas_search_style_options'
wp option delete 'doosearchas_search_upgrade_options'
wp option delete 'doosearchas_search_filter_options'
wp option delete 'doosearchas_search_product_options'
wp option delete 'doosearchas_search_additional_options'
wp option delete 'rewrite_rules'
wp option delete 'woocommerce_placeholder_image'

