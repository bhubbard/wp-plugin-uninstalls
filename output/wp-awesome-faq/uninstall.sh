#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_active_plugins'
wp option delete 'fs_storage_logger'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete '_jltmaf_welcome_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'close_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'close_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'close_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'close_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'open_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'open_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'open_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'open_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'faq-title-bg-color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'faq-title-bg-color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'faq-title-bg-color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'faq-title-bg-color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'faq-title-text-color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'faq-title-text-color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'faq-title-text-color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'faq-title-text-color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'faq-bg-color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'faq-bg-color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'faq-bg-color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'faq-bg-color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'faq-text-color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'faq-text-color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'faq-text-color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'faq-text-color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'faq-border-color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'faq-border-color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'faq-border-color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'faq-border-color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'faq_icon_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'faq_icon_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'faq_icon_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'faq_icon_position'"
