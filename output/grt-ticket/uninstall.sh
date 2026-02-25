#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'grt_ticket_poll_interval'
wp option delete 'grt_ticket_enable_browser_notification'
wp option delete 'grt_ticket_notification_sound'
wp option delete 'grt_ticket_form_structure'
wp option delete 'grt_ticket_custom_fields'
wp option delete 'grt_ticket_categories'
wp option delete 'grt_ticket_admin_name'
wp option delete 'grt_ticket_per_page'
wp option delete 'grt_ticket_enable_supabase'
wp option delete 'grt_ticket_supabase_url'
wp option delete 'grt_ticket_supabase_anon_key'
wp option delete 'grt_ticket_supabase_service_role'
wp option delete 'grt_ticket_enable_email_notifications'
wp option delete 'grt_ticket_notification_emails'
wp option delete 'grt_ticket_enable_whatsapp'
wp option delete 'grt_ticket_twilio_sid'
wp option delete 'grt_ticket_twilio_token'
wp option delete 'grt_ticket_twilio_from'
wp option delete 'grt_ticket_whatsapp_admin_number'
wp option delete 'grt_ticket_enable_direct_call'
wp option delete 'grt_ticket_enable_direct_sms'
wp option delete 'grt_ticket_support_phone'
wp option delete 'grt_ticket_sms_body'
wp option delete 'grt_ticket_enable_piping'
wp option delete 'grt_ticket_imap_host'
wp option delete 'grt_ticket_imap_port'
wp option delete 'grt_ticket_imap_user'
wp option delete 'grt_ticket_imap_pass'
wp option delete 'grt_ticket_imap_ssl'
wp option delete 'grt_ticket_auto_close_days'
wp option delete 'grt_ticket_slack_webhook'
wp option delete 'grt_ticket_discord_webhook'
wp option delete 'grt_ticket_zapier_webhook'
wp option delete 'grt_ticket_version'
wp option delete 'grt_ticket_flush_rewrite_rules_v2'

# Clear Cron Jobs
wp cron event delete 'grt_ticket_check_emails_cron'
wp cron event delete 'grt_ticket_auto_close_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'grt_profile_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'grt_profile_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'grt_profile_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'grt_profile_image'"
