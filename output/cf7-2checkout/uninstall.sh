#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cf7_2checkout_mode'
wp option delete 'cf7_test_2checkout_sellerid'
wp option delete 'cf7_test_2checkout_privatekey'
wp option delete 'cf7_test_2checkout_publickey'
wp option delete 'cf7_live_2checkout_sellerid'
wp option delete 'cf7_live_2checkout_privatekey'
wp option delete 'cf7_live_2checkout_publickey'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cf7_2checkout_address_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cf7_2checkout_address_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cf7_2checkout_address_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cf7_2checkout_address_fields'"
