#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'add_sort_a'
wp option delete 'woocommerce_default_catalog_orderby'
wp option delete 'add_sort_z'
wp option delete 'add_sort_sku'
wp option delete 'woocommerce_default_catalog_orderby_sku'
wp option delete 'add_show_empty_cat'
wp option delete 'add_sort_date'

