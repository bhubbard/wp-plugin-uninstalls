#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_paydart_settings'
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'isWebsiteAdded'
wp option delete 'websiteOption'
wp option delete 'woocommerce_pay_page_id'

