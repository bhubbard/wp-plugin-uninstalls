#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'blfpst_options'
wp option delete '_blfpst_plugin_version'
wp option delete '_blfpst_db_lock'
wp option delete '_blfpst_db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_blfpst_subscribe_mailmagazine'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_blfpst_subscribe_mailmagazine'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_blfpst_subscribe_mailmagazine'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_blfpst_subscribe_mailmagazine'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_blfpst_text_only'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_blfpst_text_only'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_blfpst_text_only'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_blfpst_text_only'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_blfpst_content_type_html'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_blfpst_content_type_html'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_blfpst_content_type_html'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_blfpst_content_type_html'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_blfpst_send_mail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_blfpst_send_mail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_blfpst_send_mail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_blfpst_send_mail_id'"
