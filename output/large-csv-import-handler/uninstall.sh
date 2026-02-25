#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lcih_csv_delimiter'
wp option delete 'lcih_csv_enclosure'
wp option delete 'lcih_csv_escape'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
