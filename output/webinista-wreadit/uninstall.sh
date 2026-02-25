#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'webinista_wreadit_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webinista'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webinista'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webinista'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webinista'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
