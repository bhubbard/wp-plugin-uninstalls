#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eduport_global'
wp option delete 'eduport_username'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eduport_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eduport_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eduport_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eduport_enabled'"
