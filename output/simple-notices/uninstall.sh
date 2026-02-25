#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_notice_for_logged_in_only'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_notice_for_logged_in_only'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_notice_for_logged_in_only'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_notice_for_logged_in_only'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_notice_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_notice_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_notice_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_notice_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pippin_notice_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pippin_notice_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pippin_notice_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pippin_notice_ids'"
