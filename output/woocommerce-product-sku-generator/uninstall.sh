#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_db_version'
wp option delete 'active_sitewide_plugins'
wp option delete 'wc_sku_generator_simple'
wp option delete 'wc_sku_generator_variation'
wp option delete 'wc_sku_generator_attribute_spaces'
wp option delete 'wc_sku_generator_version'
wp option delete 'wc_sku_generator_select'

