#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce-product-generator-limit'
wp option delete 'woocommerce-product-generator-per-run'
wp option delete 'woocommerce-product-generator-use-unsplash'
wp option delete 'woocommerce-product-generator-unsplash-access-key'
wp option delete 'woocommerce-product-generator-titles'
wp option delete 'woocommerce-product-generator-title'
wp option delete 'woocommerce-product-generator-contents'
wp option delete 'woocommerce-product-generator-categories'
wp option delete 'woocommerce-product-generator-attributes'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'woocommerce-product-generator-unsplash-picture-urls'

