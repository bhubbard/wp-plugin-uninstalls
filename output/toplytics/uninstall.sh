#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'toplytics_oauth_token'
wp option delete 'toplytics_oauth_secret'
wp option delete 'toplytics_auth_token'
wp option delete 'toplytics_account_id'
wp option delete 'toplytics_cache_timeout'
wp option delete 'toplytics_results'
wp option delete 'toplytics_result_today'
wp option delete 'toplytics_result_week'
wp option delete 'toplytics_result_month'
wp option delete 'toplytics_auth_status'
wp option delete 'toplytics_last_update'
wp option delete 'toplytics_settings'
wp option delete 'toplytics_use_ga4'
wp option delete 'toplytics_gapi_errors_count'
wp option delete 'toplytics_db_version'
wp option delete 'toplytics_db_updates_applied'
wp option delete 'toplytics_results_ranges'
wp option delete 'widget_toplytics-widget'
wp option delete 'toplytics_private_auth_config'
wp option delete 'toplytics_google_token'
wp option delete 'toplytics_profile_data'
wp option delete 'toplytics_property_id'
wp option delete 'toplytics_auth_config'
wp option delete 'toplytics_auth_code'
wp option delete 'toplytics_last_update_status'
wp option delete 'toplytics_result_realtime'
wp option delete 'toplytics_result_categories'
wp option delete 'toplytics_result_top_posts'
wp option delete 'toplytics_auth_type'
wp option delete 'toplytics_oauth2_remote_token'
wp option delete 'rewrite_rules'

# Delete Transients
wp transient delete 'toplyticsMessage'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_message_%' OR option_name LIKE '_site_transient_message_%'"

# Clear Cron Jobs
wp cron event delete 'toplytics_cron_event'

