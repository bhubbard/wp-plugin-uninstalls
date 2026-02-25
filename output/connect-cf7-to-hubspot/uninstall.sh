#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cfhs_modules'
wp option delete 'cfhs_access_token'
wp option delete 'cfhs_hf'
wp option delete 'cfhs_notification_subject'
wp option delete 'cfhs_notification_send_to'
wp option delete 'cfhs_uninstall'
wp option delete 'cfhs_portal_id'
wp option delete 'cfhs_api_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfhs_module'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfhs_module'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfhs_module'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfhs_module'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfhs_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfhs_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfhs_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfhs_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfhs_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfhs_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfhs_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfhs_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfhs_subscribe_from_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfhs_subscribe_from_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfhs_subscribe_from_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfhs_subscribe_from_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cfhs_action'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cfhs_action'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cfhs_action'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cfhs_action'"
