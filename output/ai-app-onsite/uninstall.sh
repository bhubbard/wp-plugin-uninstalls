#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ai_app_onsite_fresh_install'
wp option delete 'ai_app_onsite_encryption_key'
wp option delete 'ai_app_onsite_encryption_iv'
wp option delete 'ai_app_onsite_api_key'
wp option delete 'aiapp_server_base_url'
wp option delete 'ai_app_onsite_unique_id'
wp option delete 'ai_app_license_last_checked'
wp option delete 'aiapp_client_credentials'
wp option delete 'ai_app_onsite_accepted_tos_version'
wp option delete 'is_hackathon_user'
wp option delete 'domain_access_allowed'

# Delete Transients
wp transient delete 'ai_app_onsite_plugin_was_updated'

# Clear Cron Jobs
wp cron event delete 'ai_app_onsite_check_license_cron'
wp cron event delete 'ai_app_onsite_user_stats_cron'

