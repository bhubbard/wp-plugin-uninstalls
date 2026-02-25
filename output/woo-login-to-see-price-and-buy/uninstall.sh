#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'wltspab_settings_enable_hide_add_to_cart'
wp option delete 'wltspab_settings_enable_hide_price'
wp option delete 'wltspab_settings_alternative_to_add_to_cart_color'
wp option delete 'wltspab_settings_alternative_to_add_to_cart'
wp option delete 'wltspab_settings_alternative_to_price_color'
wp option delete 'wltspab_settings_alternative_to_price'
wp option delete 'wltspab_settings_custom_login_link_text'
wp option delete 'wltspab_settings_custom_login_link_url'

