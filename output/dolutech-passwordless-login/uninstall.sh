#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dolupalo_2fa_users_count'
wp option delete 'dolupalo_smtp_config_required'
wp option delete 'dolupalo_plugin_activated'
wp option delete 'smtp_host'
wp option delete 'smtp_port'
wp option delete 'smtp_username'
wp option delete 'smtp_password'
wp option delete 'smtp_auth'
wp option delete 'smtp_secure'
wp option delete 'dolupalo_enable_2fa'
wp option delete 'dolupalo_2fa_required_roles'
wp option delete 'dolupalo_enable_backup_codes'
wp option delete 'dolupalo_passwordless_timeout'
wp option delete 'dolupalo_last_otpauth_debug'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_dolupalo_activation_token_%' OR option_name LIKE '_site_transient_dolupalo_activation_token_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_dolupalo_token_%' OR option_name LIKE '_site_transient_dolupalo_token_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_dolupalo_2fa_pending_%' OR option_name LIKE '_site_transient_dolupalo_2fa_pending_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dolutech_passwordless_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dolutech_passwordless_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dolutech_passwordless_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dolutech_passwordless_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dolupalo_passwordless_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dolupalo_passwordless_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dolupalo_passwordless_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dolupalo_passwordless_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dolupalo_2fa_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dolupalo_2fa_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dolupalo_2fa_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dolupalo_2fa_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dolupalo_2fa_secret'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dolupalo_2fa_secret'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dolupalo_2fa_secret'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dolupalo_2fa_secret'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dolupalo_backup_codes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dolupalo_backup_codes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dolupalo_backup_codes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dolupalo_backup_codes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dolupalo_2fa_secret_temp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dolupalo_2fa_secret_temp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dolupalo_2fa_secret_temp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dolupalo_2fa_secret_temp'"
