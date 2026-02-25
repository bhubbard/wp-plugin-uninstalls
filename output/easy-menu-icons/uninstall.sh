#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'emicons_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'emicons_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'emicons_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'emicons_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'emicons_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'emicons_notice_ignore_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'emicons_notice_ignore_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'emicons_notice_ignore_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'emicons_notice_ignore_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'emicons_notice_ignore_emicon_pro_plugin_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'emicons_notice_ignore_emicon_pro_plugin_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'emicons_notice_ignore_emicon_pro_plugin_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'emicons_notice_ignore_emicon_pro_plugin_notice'"
