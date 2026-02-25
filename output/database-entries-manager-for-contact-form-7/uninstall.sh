#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wicocf7db_dbversion_plugin'
wp option delete 'wicocf7db_dbversion_defaultstatuses'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_statusid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_statusid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_statusid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_statusid'"
