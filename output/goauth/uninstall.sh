#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_active_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'goauth_enable'
wp option delete 'goauth_force_login'
wp option delete 'goauth_hide_loginform'
wp option delete 'goauth_hide_forget'
wp option delete 'goauth_xmlrpc_disabled'
wp option delete 'goauth_api_disabled'
wp option delete 'goauth_save_on_uninstall'
wp option delete 'goauth_antilockout'
wp option delete 'goauth_2fa_enable'
wp option delete 'goauth_2fa_salt'
wp option delete 'goauth_2fa_show_qr'
wp option delete 'goauth_google_enable'
wp option delete 'goauth_client_id'
wp option delete 'goauth_client_secret'
wp option delete 'goauth_domain'
wp option delete 'goauth_button_style'
wp option delete 'goauth_disable_user_enum'
wp option delete 'goauth_recover_button_style'
wp option delete 'goauth_db_version'
wp option delete 'goauth_auto_register_exclude'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'goauth_remove_garbage'

