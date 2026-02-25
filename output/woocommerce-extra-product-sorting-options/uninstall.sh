#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_db_version'
wp option delete 'wc_rename_default_sorting'
wp option delete 'woocommerce_default_catalog_orderby'
wp option delete 'active_sitewide_plugins'
wp option delete 'wc_extra_sorting_options_version'
wp option delete 'wc_extra_product_sorting_options'

