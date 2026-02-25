#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wooconvo_settings'
wp option delete 'wooconvo_migrated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooconvo_thread'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooconvo_thread'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooconvo_thread'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooconvo_thread'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooconvo_starred'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooconvo_starred'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooconvo_starred'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooconvo_starred'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_starred'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_starred'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_starred'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_starred'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooconvo_unread_vendor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooconvo_unread_vendor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooconvo_unread_vendor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooconvo_unread_vendor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooconvo_unread_customer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooconvo_unread_customer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooconvo_unread_customer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooconvo_unread_customer'"
