#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'scdc_notifier_enabled'
wp option delete 'scdc_api_key'
wp option delete 'scdc_webhook_url'
wp option delete 'scdc_embed_color'
wp option delete 'scdc_show_detailed_order_info'
wp option delete 'scdc_discord_public_key'
wp option delete 'scdc_bot_token'
wp option delete 'scdc_channel_id'
wp option delete 'scdc_status_management_enabled'
wp option delete 'scdc_thread_enabled'
wp option delete 'scdc_custom_webhook_enabled'
wp option delete 'scdc_custom_webhook_path'
wp option delete 'scdc_transient_duration'
wp option delete 'scdc_do_redirect'
wp option delete 'syncpa_scdc_pro_license_status'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_scdc_last_event_%' OR option_name LIKE '_site_transient_scdc_last_event_%'"

# Clear Cron Jobs
wp cron event delete 'scdc_evt_cleanup'
wp cron event delete 'scdc_delayed_webhooks_update'

