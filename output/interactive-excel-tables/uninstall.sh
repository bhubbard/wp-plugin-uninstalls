#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'upload_extable_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'upload_extable_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'upload_extable_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'upload_extable_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ext_csv_separator'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ext_csv_separator'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ext_csv_separator'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ext_csv_separator'"
