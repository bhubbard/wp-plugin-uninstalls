#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vesesslabs_vesessauth_options'

# Delete Transients
wp transient delete 'vesesslabs_vesessauth_blocked_ips'
wp transient delete 'vesesslabs_vesessauth_login_attempts'
wp transient delete 'vesesslabs_vesessauth_login_requests'
wp transient delete 'vesesslabs_vesessauth_registration_attempts'
wp transient delete 'vesesslabs_vesessauth_logs'

# Clear Cron Jobs
wp cron event delete 'vesesslabs_vesessauth_cleanup_codes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vesesslabs_vesessauth_login_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vesesslabs_vesessauth_login_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vesesslabs_vesessauth_login_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vesesslabs_vesessauth_login_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'email_verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'email_verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'email_verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'email_verified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'email_verification_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'email_verification_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'email_verification_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'email_verification_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vesesslabs_vesessauth_login_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vesesslabs_vesessauth_login_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vesesslabs_vesessauth_login_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vesesslabs_vesessauth_login_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vesesslabs_vesessauth_login_code_timestamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vesesslabs_vesessauth_login_code_timestamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vesesslabs_vesessauth_login_code_timestamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vesesslabs_vesessauth_login_code_timestamp'"
