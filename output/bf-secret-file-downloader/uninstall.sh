#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bf_sfd_max_file_size'
wp option delete 'bf_sfd_allow_editor_admin'
wp option delete 'bf_sfd_directory_auths'
wp option delete 'bf_sfd_auth_settings_changed'
wp option delete 'bf_sfd_directory_passwords'
wp option delete 'bf_sfd_auth_methods'
wp option delete 'bf_sfd_allowed_roles'
wp option delete 'bf_sfd_simple_auth_password'
wp option delete 'bf_sfd_auth_timeout'
wp option delete 'bf_sfd_menu_title'
wp option delete 'bf_sfd_enable_auth'
wp option delete 'bf_sfd_log_downloads'
wp option delete 'bf_sfd_security_level'
wp option delete 'bf_sfd_secure_directory_id'
wp option delete 'bf_sfd_target_directory'
wp option delete 'bf_sfd_download_logs'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_bf_sfd_download_%' OR option_name LIKE '_site_transient_bf_sfd_download_%'"

