#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_hide_affiliate_box'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_show_affiliate_box_after'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_hide_review_box'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_show_review_box_after'"
wp option delete 'check_for_mss_redirection'
wp option delete 'hide_my_sticky_sidebar_plugins'
wp option delete 'mystickyside_option_name'
wp option delete 'has_sticky_sidebar_old_version'
wp option delete 'sticky_sidebar_status'

