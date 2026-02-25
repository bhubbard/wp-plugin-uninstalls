#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'csc_general_settings'
wp option delete 'csc_login_attempts_settings'
wp option delete 'csc_redirect'
wp option delete 'csc_admin'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'comment_captcha'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'comment_captcha'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'comment_captcha'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'comment_captcha'"
