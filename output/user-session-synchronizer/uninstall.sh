#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ussync-email-header'
wp option delete 'ussync_email_confemail'
wp option delete 'ussync_email_conf_title'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ussync_secret_key_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ussync_domain_list_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ussync_no_user_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ussync_has_not_logged_in_yet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ussync_has_not_logged_in_yet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ussync_has_not_logged_in_yet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ussync_has_not_logged_in_yet'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ussync_email_verifiedcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ussync_email_verifiedcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ussync_email_verifiedcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ussync_email_verifiedcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ussync_email_verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ussync_email_verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ussync_email_verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ussync_email_verified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'session_tokens'"
