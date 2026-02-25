#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hfcm_activation_date'
wp option delete 'hfcm_db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hfcm_plugin_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hfcm_plugin_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hfcm_plugin_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hfcm_plugin_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hfcm_file_edit_plugin_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hfcm_file_edit_plugin_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hfcm_file_edit_plugin_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hfcm_file_edit_plugin_notice_dismissed'"
