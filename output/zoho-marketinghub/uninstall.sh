#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zmhub_connect_time'
wp option delete 'zmhub_rated'
wp option delete 'zma_notice'
wp option delete 'zmhub_script'
wp option delete 'zmhub_script_setting'
wp option delete 'zma_custom_banner_shown'
wp option delete 'zmhub_script_setting_setting'
wp option delete 'zmhub_domname'
wp option delete 'zmhub_token_details'
wp option delete 'zmhub_user_email'
wp option delete 'zmhub_error_msg'
wp option delete 'zmhub_integration'
wp option delete 'zmhub_store_stats'
wp option delete 'zmhub_intergration_details'
wp option delete 'zmhub_optin_setting'
wp option delete 'zma_version'
wp option delete 'zmh_plugin_version'

# Clear Cron Jobs
wp cron event delete 'zmhub_refresh_forms_event'
wp cron event delete 'zmhub_track_order_event_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zma_newsletter_subscription'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zma_newsletter_subscription'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zma_newsletter_subscription'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zma_newsletter_subscription'"
