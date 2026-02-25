#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nexlifydesk_imap_settings'
wp option delete 'nexlifydesk_aws_processed_emails'
wp option delete 'nexlifydesk_processed_emails'
wp option delete 'nexlifydesk_settings'
wp option delete 'nexlifydesk_agent_positions'
wp option delete 'nexlifydesk_email_templates'
wp option delete 'nexlifydesk_version'
wp option delete 'nexlifydesk_last_ticket_number'
wp option delete 'nexlifydesk_db_version'
wp option delete 'nexlifydesk_password_encryption_migration'
wp option delete 'nexlifydesk_template_notice_dismissed'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'nexlifydesk_google_oauth_state'
wp transient delete 'nexlifydesk_sla_tickets'
wp transient delete 'nexlifydesk_resolved_tickets'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'nexlifydesk_sla_check'
wp cron event delete 'nexlifydesk_auto_close_tickets'
wp cron event delete 'nexlifydesk_check_orphaned_tickets'
wp cron event delete 'nexlifydesk_fetch_emails_event'
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nexlifydesk_agent_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nexlifydesk_agent_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nexlifydesk_agent_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nexlifydesk_agent_position'"
