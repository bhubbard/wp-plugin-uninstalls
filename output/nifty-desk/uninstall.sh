#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nifty_desk_settings'
wp option delete 'nifty_desk_notifications'
wp option delete 'nifty_desk_api_secret_token'
wp option delete 'nifty_desk_schedules'
wp option delete 'nifty_desk_channels'
wp option delete 'nifty_desk_default_assigned_to'
wp option delete 'nifty_desk_views'
wp option delete 'nifty_desk_first_time'
wp option delete 'nifty_desk_submit_ticket_page'
wp option delete 'nifty_desk_current_version'
wp option delete 'nifty_desk_email_to_ticket'
wp option delete 'nifty_desk_host'
wp option delete 'nifty_desk_port'
wp option delete 'nifty_desk_username'
wp option delete 'nifty_desk_password'
wp option delete 'nifty_desk_encryption'
wp option delete 'nifty_desk_survey_page'
wp option delete 'nifty_desk_UPGRADE_V_4'
wp option delete 'nifty_desk_support_center_page'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ticket_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ticket_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ticket_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ticket_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ticket_public'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ticket_public'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ticket_public'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ticket_public'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ticket_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ticket_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ticket_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ticket_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ticket_assigned_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ticket_assigned_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ticket_assigned_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ticket_assigned_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ticket_last_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ticket_last_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ticket_last_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ticket_last_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ticket_origin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ticket_origin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ticket_origin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ticket_origin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ticket_reference'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ticket_reference'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ticket_reference'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ticket_reference'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nifty_desk_notification_issue'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nifty_desk_notification_issue'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nifty_desk_notification_issue'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nifty_desk_notification_issue'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_response_parent_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_response_parent_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_response_parent_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_response_parent_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nifty_desk_merged_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nifty_desk_merged_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nifty_desk_merged_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nifty_desk_merged_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nifty_desk_merged_with'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nifty_desk_merged_with'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nifty_desk_merged_with'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nifty_desk_merged_with'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nifty_desk_seen'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nifty_desk_seen'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nifty_desk_seen'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nifty_desk_seen'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ticket_channel_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ticket_channel_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ticket_channel_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ticket_channel_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ticket_attachments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ticket_attachments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ticket_attachments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ticket_attachments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_note_parent_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_note_parent_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_note_parent_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_note_parent_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ticket_follow_up'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ticket_follow_up'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ticket_follow_up'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ticket_follow_up'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ticket_full_raw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ticket_full_raw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ticket_full_raw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ticket_full_raw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ticket_html'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ticket_html'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ticket_html'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ticket_html'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ticket_reference_receipt_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ticket_reference_receipt_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ticket_reference_receipt_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ticket_reference_receipt_id'"
