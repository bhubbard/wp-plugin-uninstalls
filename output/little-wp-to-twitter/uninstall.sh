#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lwtt_username'
wp option delete 'lwtt_password'
wp option delete 'enable_lwtt'
wp option delete 'lwtt_username_sina'
wp option delete 'lwtt_password_sina'
wp option delete 'lwtt_sina'
wp option delete 'lwtt_time'
wp option delete 'lwtt_update_prefix'
wp option delete 'lwtt_new_prefix'
wp option delete 'lwtt_api'
wp option delete 'lwtt_tags'
wp option delete 'lwtt_proxy'
wp option delete 'lwtt_custom_proxy'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lwtt_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lwtt_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lwtt_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lwtt_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lwtt_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lwtt_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lwtt_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lwtt_text'"
