#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'inpost_paczkomaty_options'
wp option delete 'woocommerce_cart_page_id'
wp option delete 'woocommerce_checkout_page_id'

