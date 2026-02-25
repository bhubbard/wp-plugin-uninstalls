#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shopify_domain'
wp option delete 'shopify_access_token'
wp option delete 'cart_tab_button_color'
wp option delete 'cart_tab_button_hover_color'
wp option delete 'cart_tab_button_text_color'

