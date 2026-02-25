#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cart32wp_client_code'
wp option delete 'cart32wp_cart32_url'
wp option delete 'cart32wp_c32web_url'
wp option delete 'cart32wp_account_info'
wp option delete 'cart32wp_access_code'
wp option delete 'cart32_wp_add_view_cart_to_menu'
wp option delete 'cart32wp_view_cart_text'
wp option delete 'last_cart32_update'
wp option delete 'last_cart32_call'

