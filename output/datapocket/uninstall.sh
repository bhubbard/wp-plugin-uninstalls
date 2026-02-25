#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'datapocket_wp_token'
wp option delete 'datapocket_token'
wp option delete 'datapocket_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'datapocket_is_existing_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'datapocket_is_existing_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'datapocket_is_existing_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'datapocket_is_existing_post'"
