#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_thanks_page_id'
wp option delete 'woocommerce_cart_page_id'
wp option delete 'woocommerce_bambora_settings'

