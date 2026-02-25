#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cbox_db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cbox_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cbox_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cbox_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cbox_options'"
