#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'reviveso_plugin_dismiss_rating_notice'
wp option delete 'reviveso_plugin_no_thanks_rating_notice'
wp option delete 'reviveso_plugin_dismissed_time'
wp option delete 'reviveso_plugin_installed_time'
wp option delete 'reviveso_hide_permalink_notice'
wp option delete 'reviveso_next_scheduled_timestamp'
wp option delete 'reviveso_next_eligible_date'
wp option delete 'reviveso_last_global_cron_run'
wp option delete 'reviveso_global_republish_post_ids'
wp option delete 'reviveso_plugin_settings'
wp option delete 'wpar_plugin_settings'
wp option delete 'reviveso_show_import_notice'
wp option delete 'wpar_social_credentials'
wp option delete 'wpar_facebook_accounts_db'
wp option delete 'wpar_linkedin_accounts_db'
wp option delete 'wpar_pinterest_accounts_db'
wp option delete 'wpar_twitter_accounts_db'
wp option delete 'wpar_tumblr_accounts_db'
wp option delete 'reviveso_social_credentials'
wp option delete 'reviveso_facebook_accounts_db'
wp option delete 'reviveso_linkedin_accounts_db'
wp option delete 'reviveso_pinterest_accounts_db'
wp option delete 'reviveso_twitter_accounts_db'
wp option delete 'reviveso_tumblr_accounts_db'
wp option delete 'reviveso_republish_log_history'
wp option delete 'reviveso_dashboard_widget_options'

# Delete Transients
wp transient delete 'reviveso_in_progress'
wp transient delete 'reviveso_extensions'
wp transient delete 'reviveso_import_db_done'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

