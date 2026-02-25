#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wfg_enable_free_gift'
wp option delete 'wfg_minimum_cart_value'
wp option delete 'wfg_gift_category'
wp option delete 'wfg_message_value_low'
wp option delete 'wfg_button_value_low'
wp option delete 'wfg_message_value_ok'
wp option delete 'wfg_button_value_ok'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_virtual'"
