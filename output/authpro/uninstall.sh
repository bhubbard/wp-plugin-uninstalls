#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'authpro_username'
wp option delete 'authpro_usage'
wp option delete 'authpro_protect_categories'
wp option delete 'authpro_protect_tags'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_authpro_protect'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_authpro_protect'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_authpro_protect'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_authpro_protect'"
