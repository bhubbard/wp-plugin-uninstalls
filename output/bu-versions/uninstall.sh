#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_bu_version_post_overwritten'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bu_version_copied_keys'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bu_version_copied_keys'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bu_version_copied_keys'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bu_version_copied_keys'"
