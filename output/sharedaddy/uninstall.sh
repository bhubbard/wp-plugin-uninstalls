#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sharedaddy_disable_resources'
wp option delete 'sharing-options'
wp option delete 'sharing-services'
wp option delete 'text_direction'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sharing_disabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sharing_disabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sharing_disabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sharing_disabled'"
