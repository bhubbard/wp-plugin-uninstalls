#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'product_list_url'
wp option delete 'shopping_cart_url'
wp option delete 'transact_url'
wp option delete 'user_account_url'

