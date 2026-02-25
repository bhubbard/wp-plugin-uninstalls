#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'silkypress-input-field-block'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'woocommerce_checkout_page_id'

