#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'loginwp_from_ab_initio'
wp option delete 'loginwp_install_date'
wp option delete 'loginwp_free_license'
wp option delete 'rul_settings'
wp option delete 'rul_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%user_roles'"
wp option delete 'wo_dismiss_adnotice'
wp option delete 'loginwp_settings'
wp option delete 'loginwp_redirection_settings'
wp option delete 'loginwp_license_status'
wp option delete 'loginwp_license_expired_status'
wp option delete 'loginwp_license_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pand-%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'loginwp_first_time_login_flag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'loginwp_first_time_login_flag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'loginwp_first_time_login_flag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'loginwp_first_time_login_flag'"
