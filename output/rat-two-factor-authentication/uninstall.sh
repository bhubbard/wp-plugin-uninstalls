#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rat_2fa_global_enabled'
wp option delete 'rat_2fa_force_users'
wp option delete 'rat_2fa_user_roles'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_rat_2fa_debug_otp_%' OR option_name LIKE '_site_transient_rat_2fa_debug_otp_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rat_2fa_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rat_2fa_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rat_2fa_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rat_2fa_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rat_2fa_otp_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rat_2fa_otp_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rat_2fa_otp_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rat_2fa_otp_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rat_2fa_otp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rat_2fa_otp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rat_2fa_otp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rat_2fa_otp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rat_2fa_debug_otp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rat_2fa_debug_otp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rat_2fa_debug_otp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rat_2fa_debug_otp'"
