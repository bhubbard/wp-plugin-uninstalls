#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'r2k_captcha_service'
wp option delete 'r2k_captcha_error'
wp option delete 'r2k_captcha_last_error'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'r2k_rc_last_dis_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'r2k_rc_last_dis_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'r2k_rc_last_dis_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'r2k_rc_last_dis_error'"
