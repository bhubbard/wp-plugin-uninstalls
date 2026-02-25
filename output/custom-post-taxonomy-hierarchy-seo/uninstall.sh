#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cpth_settings'
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_product_category_slug'

