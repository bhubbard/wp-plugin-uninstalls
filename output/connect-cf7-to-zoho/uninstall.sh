#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'Cf7zh_grand_token'
wp option delete 'Cf7zh_accounts_server'
wp option delete 'Cf7zh_client_id'
wp option delete 'Cf7zh_client_secret'
wp option delete 'Cf7zh_access_token_stored_flag'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'Cf7zh_%'"
wp option delete 'Cf7zh_leads'
wp option delete 'cfhs_notification_send_to'
wp option delete 'cfhs_notification_subject'
wp option delete 'Cf7zh_current_user_email'
wp option delete 'Cf7zh_notification_subject'
wp option delete 'Cf7zh_notification_send_to'
wp option delete 'Cf7zh_uninstall'
wp option delete 'Cf7zh_access_token'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Cf7zh_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Cf7zh_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Cf7zh_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Cf7zh_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Cf7zh_update_person'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Cf7zh_update_person'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Cf7zh_update_person'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Cf7zh_update_person'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Cf7zh_update_org'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Cf7zh_update_org'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Cf7zh_update_org'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Cf7zh_update_org'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Cf7zh_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Cf7zh_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Cf7zh_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Cf7zh_fields'"
