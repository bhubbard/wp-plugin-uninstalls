#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simple_alert_for_old_post_is_show_single'
wp option delete 'simple_alert_for_old_post_is_show_page'
wp option delete 'simple_alert_for_old_post_date'
wp option delete 'simple_alert_for_old_post_date_type'
wp option delete 'simple_alert_for_old_post_theme'
wp option delete 'simple_alert_for_old_post_icon'
wp option delete 'simple_alert_for_old_post_message'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'simple_alert_for_old_post_%'"

