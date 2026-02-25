#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'crm_support_tickets_plugin_version'
wp option delete 'crm_support_tickets_db_version'
wp option delete 'crm_support_tickets_agent_roles'
wp option delete 'crm_pro_support_tickets_license_key'
wp option delete 'crm_support_tickets_slug_to_tickets'
wp option delete 'crm_support_tickets_enable_admin_email'
wp option delete 'crm_support_tickets_enable_customer_email'
wp option delete 'crm_support_tickets_email_from_name'
wp option delete 'crm_support_tickets_from_email'
wp option delete 'crm_support_tickets_enable_auto_close'
wp option delete 'crm_support_tickets_auto_close_days'
wp option delete 'crm_support_tickets_enable_captcha'
wp option delete 'crm_support_tickets_captcha_site_key'
wp option delete 'crm_support_tickets_captcha_secret_key'
wp option delete 'crm_support_tickets_delete_all_uninstall'

# Clear Cron Jobs
wp cron event delete 'crm_support_tickets_autoclose_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crm_ticket_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crm_ticket_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crm_ticket_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crm_ticket_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crm_ticket_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crm_ticket_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crm_ticket_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crm_ticket_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crm_ticket_agent_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crm_ticket_agent_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crm_ticket_agent_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crm_ticket_agent_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crm_ticket_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crm_ticket_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crm_ticket_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crm_ticket_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crm_ticket_subject'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crm_ticket_subject'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crm_ticket_subject'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crm_ticket_subject'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crm_ticket_customer_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crm_ticket_customer_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crm_ticket_customer_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crm_ticket_customer_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crm_ticket_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crm_ticket_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crm_ticket_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crm_ticket_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crm_ticket_agent_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crm_ticket_agent_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crm_ticket_agent_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crm_ticket_agent_name'"
