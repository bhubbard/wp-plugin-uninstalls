#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fcmdpplgpn_api'
wp option delete 'fcmdpplgpn_channel'
wp option delete 'fcmdpplgpn_topic'
wp option delete 'fcmdpplgpn_sound'
wp option delete 'fcmdpplgpn_default_image'
wp option delete 'fcmdpplgpn_custom_fields'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fcmdpplgpn_posttype_%'"
wp option delete 'fcmdpplgpn_disable'
wp option delete 'fcmdpplgpn_page_disable'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'send-fcm-checkbox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'send-fcm-checkbox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'send-fcm-checkbox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'send-fcm-checkbox'"
