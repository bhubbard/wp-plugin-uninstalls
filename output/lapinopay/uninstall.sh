#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_thankyou_page_id'
wp option delete 'woocommerce_checkout_page_id'

