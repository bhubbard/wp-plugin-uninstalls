#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cf7pd_access_token'
wp option delete 'cf7pd_persons'
wp option delete 'cf7pd_organizations'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cf7pd_%'"
wp option delete 'cf7pd_notes'
wp option delete 'cf7pd_lead'
wp option delete 'cf7pd_file'
wp option delete 'cf7pd_marketing_status'
wp option delete 'cfhs_notification_send_to'
wp option delete 'cfhs_notification_subject'
wp option delete 'cf7pd_notification_subject'
wp option delete 'cf7pd_notification_send_to'
wp option delete 'cf7pd_uninstall'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cf7pd_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cf7pd_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cf7pd_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cf7pd_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cf7pd_update_person'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cf7pd_update_person'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cf7pd_update_person'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cf7pd_update_person'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cf7pd_update_org'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cf7pd_update_org'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cf7pd_update_org'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cf7pd_update_org'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cf7pd_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cf7pd_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cf7pd_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cf7pd_fields'"
