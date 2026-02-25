#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'close_shop_settings_input'
wp option delete 'close_shop_settings_displayToggleCB'
wp option delete 'close_shop_settings_addToCartDisplayToggle'
wp option delete 'close_shop_settings_proceedToCheckoutDisplayToggle'
wp option delete 'close_shop_settings_displayInputText'
wp option delete 'close_shop_settings_displayInputTextProductPage'
wp option delete 'close_shop_settings_displayInputTextCartPage'
wp option delete 'close_shop_settings_displayInputTextCheckoutPage'

