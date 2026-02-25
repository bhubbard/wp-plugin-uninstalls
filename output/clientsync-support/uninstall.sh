#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cs_support_page_id'
wp option delete 'cs_support_helpdesk_settings'
wp option delete 'cs_support_db_version'
wp option delete 'cs_support_helpdesk_data_retention'
wp option delete 'cs_support_notification_settings'

# Clear Cron Jobs
wp cron event delete 'cs_support_data_retention_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_support_ticket'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_support_ticket'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_support_ticket'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_support_ticket'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ticket_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ticket_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ticket_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ticket_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_comment_author_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_comment_author_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_comment_author_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_comment_author_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ticket_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ticket_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ticket_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ticket_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ticket_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ticket_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ticket_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ticket_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ticket_customer_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ticket_customer_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ticket_customer_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ticket_customer_email'"
