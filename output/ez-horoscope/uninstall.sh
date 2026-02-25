#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ezhp_summaries_cache_version'
wp option delete 'ezhp_horoscope_activation_guid'
wp option delete 'ezhp_voice_agent_id'
wp option delete 'ezhp_voice_api_key_last4'
wp option delete 'ezhp_voice_api_key'
wp option delete 'ezhp_agent_widget_ids'
wp option delete 'ezhp_horoscope_background_color'
wp option delete 'ezhp_horoscope_font'
wp option delete 'ezhp_horoscope_font_size'
wp option delete 'ezhp_horoscope_font_color'
wp option delete 'ezhp_horoscope_include_backlink'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

