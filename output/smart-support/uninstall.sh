#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smart_support_shortcode_notice_shown'
wp option delete 'smart_support_general_settings'
wp option delete 'smart_support_user_management_settings'
wp option delete 'smart_support_installation_date'
wp option delete 'smart_support_last_review_action'
wp option delete 'smart_support_last_review_action_date'
wp option delete 'smart_support_agent_management_settings'
wp option delete 'smart_support_file_settings'
wp option delete 'smart_support_email_settings'
wp option delete 'smart_support_smtp_settings'
wp option delete 'smart_support_appearance_settings'
wp option delete 'smart_support_advanced_settings'
wp option delete 'smart_support_db_version'
wp option delete 'smart_support_flush_rewrite_rules'
wp option delete 'smart_support_version'
wp option delete 'smart_support_product_uids'
wp option delete 'smart_support_license_secret'
wp option delete 'smart_support_core_status_overrides'
wp option delete 'smart_support_page_id'
wp option delete 'smart_support_last_assigned_agent_id'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_smart_support_role_warnings_%' OR option_name LIKE '_site_transient_smart_support_role_warnings_%'"

# Clear Cron Jobs
wp cron event delete 'smart_support_auto_close_tickets'
wp cron event delete 'smart_support_auto_delay_tickets'
wp cron event delete 'smart_support_cleanup_old_tickets'
wp cron event delete 'smart_support_send_digest_emails'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smart_support_approved'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smart_support_approved'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smart_support_approved'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smart_support_approved'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smart_support_tickets_hidden_columns'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smart_support_tickets_hidden_columns'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smart_support_tickets_hidden_columns'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smart_support_tickets_hidden_columns'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smart_support_approved_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smart_support_approved_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smart_support_approved_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smart_support_approved_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smart_support_last_activity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smart_support_last_activity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smart_support_last_activity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smart_support_last_activity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smart_support_agent_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smart_support_agent_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smart_support_agent_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smart_support_agent_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smart_support_approval_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smart_support_approval_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smart_support_approval_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smart_support_approval_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smart_support_rejection_reason'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smart_support_rejection_reason'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smart_support_rejection_reason'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smart_support_rejection_reason'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smart_support_hide_closed_tickets'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smart_support_hide_closed_tickets'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smart_support_hide_closed_tickets'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smart_support_hide_closed_tickets'"
