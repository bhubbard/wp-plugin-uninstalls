#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'my_lessn_domain'
wp option delete 'my_lessn_api_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_lessnd_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_lessnd_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_lessnd_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_lessnd_url'"
