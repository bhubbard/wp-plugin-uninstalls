#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'update_xml_and_json_at'
wp option delete 'preciso_login_username'
wp option delete 'preciso_login_password'
wp option delete 'preciso_plugin_set'
wp option delete 'termstatus'
wp option delete 'preciso_token'
wp option delete 'preciso_campaignId'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
