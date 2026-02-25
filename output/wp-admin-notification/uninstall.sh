#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wpan_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wpan_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wpan_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wpan_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_admin_notification_display_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_admin_notification_display_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_admin_notification_display_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_admin_notification_display_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_admin_notification_display_term_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_admin_notification_display_term_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_admin_notification_display_term_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_admin_notification_display_term_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_admin_notification_display_term_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_admin_notification_display_term_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_admin_notification_display_term_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_admin_notification_display_term_end'"
