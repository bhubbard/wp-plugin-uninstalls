#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sell_photo_plugin_version'
wp option delete 'sell_photo_paypal_email'
wp option delete 'sell_photo_currency_code'
wp option delete 'sell_photo_price_amount'
wp option delete 'sell_photo_button_anchor'
wp option delete 'sell_photo_return_url'
wp option delete 'sell_photo_enable_testmode'

