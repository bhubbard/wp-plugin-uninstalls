#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%categories' OR option_name LIKE '_site_transient_%categories'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%brands' OR option_name LIKE '_site_transient_%brands'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%attributes' OR option_name LIKE '_site_transient_%attributes'"
wp transient delete 'wavinai_search_30_days_total_clicks'
wp transient delete 'wavinai_search_top_clicks'
wp transient delete 'wavinai_search_top_searches'
wp transient delete 'wavinai_search_30_days_total_searches'
wp transient delete 'wavinai_search_30_days_non_empty_searches'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

