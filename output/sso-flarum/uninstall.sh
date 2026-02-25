#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'flarum_sso_plugin_%'"
wp option delete 'flarum_sso_plugin_version'
wp option delete 'flarum_sso_plugin_insecure'
wp option delete 'flarum_sso_plugin_verify_ssl'
wp option delete 'flarum_sso_plugin_flarum_url'
wp option delete 'flarum_sso_plugin_api_key'
wp option delete 'flarum_sso_plugin_verify_ssl_cert_path'
wp option delete 'flarum_sso_plugin_root_domain'
wp option delete 'flarum_sso_plugin_password_token'
wp option delete 'flarum_sso_plugin_memberpress_addon_set_groups_admins'
wp option delete 'flarum_sso_plugin_update_user_avatar'
wp option delete 'flarum_sso_plugin_active'

