#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'login_lmt_blocks'
wp option delete 'login_lmt_retries'
wp option delete 'login_lmt_retries_valid'
wp option delete 'login_lmt_blocks_total'
wp option delete 'site_name'
wp option delete 'login_lmt_logged'
wp option delete 'login_lmt_client_type'
wp option delete 'login_lmt_allowed_retries'
wp option delete 'login_lmt_lock_after_duration'
wp option delete 'login_lmt_allowed_blocks'
wp option delete 'login_lmt_long_duration'
wp option delete 'login_lmt_valid_duration'
wp option delete 'login_lmt_lock_after_notify'
wp option delete 'login_lmt_notify_email_after'
wp option delete 'login_lmt_cookies'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'login_lmt_previous_cookie'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'login_lmt_previous_cookie'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'login_lmt_previous_cookie'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'login_lmt_previous_cookie'"
