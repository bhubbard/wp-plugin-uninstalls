#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'loginwiaz_cred_storage'
wp option delete 'loginwiaz_disable_password_login'
wp option delete 'loginwiaz_redirect_url_value'
wp option delete 'loginwiaz_client_id_value'
wp option delete 'loginwiaz_client_secret_value'
wp option delete 'loginwiaz_tenant_id_value'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
