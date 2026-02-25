#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tabmel_override_ms'
wp option delete 'Admin'
wp option delete 'tablepress_tables'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tablepress_table_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tablepress_table_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tablepress_table_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tablepress_table_options'"
