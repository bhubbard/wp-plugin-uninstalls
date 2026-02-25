#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'bitfire_scan_action'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bitfire_mfa_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bitfire_mfa_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bitfire_mfa_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bitfire_mfa_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bitfire_mfa_tel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bitfire_mfa_tel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bitfire_mfa_tel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bitfire_mfa_tel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bitfire_last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bitfire_last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bitfire_last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bitfire_last_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bitfire_mfa_correct'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bitfire_mfa_correct'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bitfire_mfa_correct'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bitfire_mfa_correct'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bitfire_mfa_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bitfire_mfa_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bitfire_mfa_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bitfire_mfa_sent'"
