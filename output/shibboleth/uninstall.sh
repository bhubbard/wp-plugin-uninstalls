#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shibboleth_attribute_access_method'
wp option delete 'shibboleth_attribute_access_method_fallback'
wp option delete 'shibboleth_attribute_custom_access_method'
wp option delete 'shibboleth_login_url'
wp option delete 'shibboleth_logout_url'
wp option delete 'shibboleth_spoof_key'
wp option delete 'shibboleth_default_to_shib_login'
wp option delete 'shibboleth_auto_login'
wp option delete 'shibboleth_disable_local_auth'
wp option delete 'shibboleth_idps'
wp option delete 'shibboleth_headers'
wp option delete 'shibboleth_create_accounts'
wp option delete 'shibboleth_auto_combine_accounts'
wp option delete 'shibboleth_manually_combine_accounts'
wp option delete 'shibboleth_roles'
wp option delete 'shibboleth_default_role'
wp option delete 'shibboleth_update_roles'
wp option delete 'shibboleth_logging'
wp option delete 'shibboleth_plugin_version'
wp option delete 'shibboleth_update_users'
wp option delete 'shibboleth_plugin_revision'
wp option delete 'shibboleth_attribute_access'
wp option delete 'shibboleth_spoofkey'
wp option delete 'shibboleth_default_login'
wp option delete 'shibboleth_button_text'
wp option delete 'shibboleth_password_change_url'
wp option delete 'shibboleth_password_reset_url'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shibboleth_account'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shibboleth_account'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shibboleth_account'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shibboleth_account'"
