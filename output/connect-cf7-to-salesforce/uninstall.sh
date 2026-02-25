#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'CF7SF_%'"
wp option delete 'CF7SF_auth_data'
wp option delete 'CF7SF_instance_url'
wp option delete 'CF7SF_consumer_key'
wp option delete 'CF7SF_consumer_secret'
wp option delete 'CF7SF_callback_url'
wp option delete 'CF7SF_lead'
wp option delete 'cfhs_notification_send_to'
wp option delete 'cfhs_notification_subject'
wp option delete 'CF7SF_token'
wp option delete 'CF7SF_refresh_token'
wp option delete 'CF7SF_token_time'
wp option delete 'CF7SF_sandbox'
wp option delete 'CF7SF_notification_subject'
wp option delete 'CF7SF_notification_send_to'
wp option delete 'CF7SF_uninstall'
wp option delete 'CF7SF_state'
wp option delete 'CF7SF_access_token'
wp option delete 'CF7SF_persons'
wp option delete 'CF7SF_organizations'
wp option delete 'CF7SF_notes'
wp option delete 'CF7SF_file'
wp option delete 'CF7SF_marketing_status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'CF7SF_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'CF7SF_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'CF7SF_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'CF7SF_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'CF7SF_update_lead'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'CF7SF_update_lead'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'CF7SF_update_lead'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'CF7SF_update_lead'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'CF7SF_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'CF7SF_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'CF7SF_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'CF7SF_fields'"
