#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'npn_mailnotify_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'npn_mailnotify_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'npn_mailnotify_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'npn_mailnotify_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'npn_notified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'npn_notified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'npn_notified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'npn_notified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'npn_mailnotify'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'npn_mailnotify'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'npn_mailnotify'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'npn_mailnotify'"
