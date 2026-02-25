#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'no_of_wp_limit_login_attepts'
wp option delete 'limit_login_attepts_delay_time'
wp option delete 'limit_login_attepts_captcha'
wp option delete 'limit_login_captcha'
wp option delete 'limit_login_install_date'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_limit_login_nag_ignore'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_limit_login_nag_ignore'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_limit_login_nag_ignore'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_limit_login_nag_ignore'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'limit_login_rating_ignore_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'limit_login_rating_ignore_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'limit_login_rating_ignore_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'limit_login_rating_ignore_notice'"
