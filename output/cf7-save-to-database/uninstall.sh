#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cf7_fields_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cf7_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cf7_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cf7_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cf7_total'"
