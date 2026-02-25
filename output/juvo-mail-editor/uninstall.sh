#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'settings'

# Clear Cron Jobs
wp cron event delete 'juvo_mail_editor_trigger_init'
wp cron event delete 'bl_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'icl_admin_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'icl_admin_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'icl_admin_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'icl_admin_language'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_recipients'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_recipients'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_recipients'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_recipients'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_subject'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_subject'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_subject'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_subject'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_attachments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_attachments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_attachments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_attachments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_cc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_cc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_cc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_cc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_bcc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_bcc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_bcc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_bcc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
