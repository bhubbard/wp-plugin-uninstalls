#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enable_chat_widget'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_chat_widget_app_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_workspace_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_identity_verification_secret'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_connection_status'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_event_prefix'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enable_user_sync'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_user_roles'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enable_background_sync'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_sync_frequency'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enable_logs'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enable_tags_sync'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tags_to_sync'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_access_token'"
wp option delete 'rpplstp_iws_enable_chat_widget'
wp option delete 'rpplstp_iws_chat_widget_app_id'
wp option delete 'rpplstp_iws_workspace_id'
wp option delete 'rpplstp_iws_identity_verification_secret'

# Delete Transients
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_intercom_contact_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_intercom_contact_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_intercom_contact_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_intercom_contact_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_synced_roles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_synced_roles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_synced_roles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_synced_roles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rpplstp_iws_intercom_contact_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rpplstp_iws_intercom_contact_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rpplstp_iws_intercom_contact_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rpplstp_iws_intercom_contact_id'"
