#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_iSell_photo_paypal_email_address'
wp option delete 'wp_iSell_photo_paypal_currency_code'
wp option delete 'wp_iSell_photo_paypal_currency_symbol'
wp option delete 'wp_iSell_photo_paypal_return_url'

