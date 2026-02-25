#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_shop_slug'
wp option delete 'woocommerce_prepend_shop_page_to_urls'
wp option delete 'catalyst_connect'

