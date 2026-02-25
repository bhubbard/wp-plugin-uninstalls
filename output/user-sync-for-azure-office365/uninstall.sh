#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mo_azure_admin_email'
wp option delete 'mo_azure_admin_password'
wp option delete 'mo_azos_admin_email'
wp option delete 'mo_saml_admin_password'
wp option delete 'manual'
wp option delete 'automatic'
wp option delete 'push_user_to_ad'
wp option delete 'mo_saml_admin_email'
wp option delete 'mo_saml_admin_phone'
wp option delete 'host_name'
wp option delete 'mo_azos_application_config'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'AD_SYNC_ID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'AD_SYNC_ID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'AD_SYNC_ID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'AD_SYNC_ID'"
