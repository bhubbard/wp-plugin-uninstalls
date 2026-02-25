#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'channel_io_plugin_key'
wp option delete 'channel_io_secret_key'
wp option delete 'channel_io_hide_default_launcher'
wp option delete 'channel_io_mobile_messenger_mode'
wp option delete 'channel_io_z_index'
wp option delete 'channel_io_custom_launcher_selector'
wp option delete 'channel_io_member_hash'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
