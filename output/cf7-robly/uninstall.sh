#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cf7_robly_settings'
wp option delete 'robly_sublists'
wp option delete 'robly_fields'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cf7_robly'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cf7_robly'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cf7_robly'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cf7_robly'"
