#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'i12n_upload_path'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'i12n_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'i12n_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'i12n_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'i12n_file'"
