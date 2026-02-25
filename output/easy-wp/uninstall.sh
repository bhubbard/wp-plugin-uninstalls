#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'easywp_adminview'
wp option delete 'easywp_pages_add_delete'
wp option delete 'easy-wp-current-button'
wp option delete 'easy-wp-current-title'
wp option delete 'easy-wp-current-backlink'
wp option delete 'wp-analytics-login-email'
wp option delete 'wp-analytics-login-password'
wp option delete 'wp-analytics-profile'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-posttype'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-name'"
wp option delete 'easywp_admin_godbutton'

