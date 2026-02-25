#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'thub_disable_attachments'
wp option delete 'thub_custom_fields'
wp option delete 'thub_options'
wp option delete 'thub_plus_options'

# Clear Cron Jobs
wp cron event delete 'thub_archive_done_tickets'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thub_log'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thub_log'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thub_log'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thub_log'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'document_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'document_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'document_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'document_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thub_answer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thub_answer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thub_answer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thub_answer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'thcf_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'thcf_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'thcf_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'thcf_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thub_ticket_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thub_ticket_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thub_ticket_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thub_ticket_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'completed_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'completed_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'completed_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'completed_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thub_ticket_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thub_ticket_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thub_ticket_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thub_ticket_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thub_ticket_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thub_ticket_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thub_ticket_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thub_ticket_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thub_ticket_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thub_ticket_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thub_ticket_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thub_ticket_description'"
