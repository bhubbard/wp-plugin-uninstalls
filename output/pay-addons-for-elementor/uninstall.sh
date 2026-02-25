#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'epa_sys_settings'
wp option delete 'epa_stripe_settings'
wp option delete 'epa_db_version'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'epa_email_list'
wp option delete 'stripe_express_email_sender_from_email'
wp option delete 'epa_elements'
wp option delete 'epa_email_sender_from_name'
wp option delete 'epa_email_sender_from_email'
wp option delete 'epa_email_style_background_color'
wp option delete 'epa_email_style_body_background_color'
wp option delete 'epa_email_style_base_color'
wp option delete 'epa_email_style_text_color'
wp option delete 'epa_email_enable_custom_template'
wp option delete 'epa_email_template_name'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp transient delete 'epa_stripe_configs'
wp transient delete 'epa_stripe_price_list'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

