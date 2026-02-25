#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ezoic_js_integration_enabled'
wp option delete 'ezoic_js_integration_options'
wp option delete 'ezoic_adstxtmanager_id'
wp option delete 'ezoic_adstxtmanager_auto_detect'
wp option delete 'ezoic_adstxtmanager_status'
wp option delete 'ezoic_cdn_api_key'
wp option delete 'ezoic_cdn_enabled'
wp option delete 'ezoic_cdn_show_post_ids'
wp option delete 'ezoic_cdn_always_clear_posts'
wp option delete 'ezoic_cdn_always_clear_urls'
wp option delete 'ezoic_cdn_always_home'
wp option delete 'ezoic_cdn_domain'
wp option delete 'ezoic_cdn_verbose_mode'
wp option delete 'fb_clear_cache_enabled'
wp option delete 'fb_app_id'
wp option delete 'fb_app_secret'
wp option delete 'fb_app_auth_token'
wp option delete 'ez_emote_enabled'
wp option delete 'ezoic_integration_status'
wp option delete 'ezoic_integration_options'
wp option delete 'ezoic_speed_settings'
wp option delete 'sidebars_widgets'
wp option delete 'widget_ezoic_adpos_widget'
wp option delete 'ezoic_cdn_show_post_ids '
wp option delete 'GTranslate'
wp option delete 'ezoic_auth_client_id'
wp option delete 'ezoic_auth_client_secret'
wp option delete 'ezoic_auth_access_token'
wp option delete 'ezoic_token_generated_time'
wp option delete 'ezoic_db_version'

# Delete Transients
wp transient delete 'ezoic_send_debug'
wp transient delete 'ezoic_clear_caches'
wp transient delete 'ezoic_config_regenerate'
wp transient delete 'ezoic_duplicate_scripts_check'
wp transient delete 'ezoic_cdn_admin_notice'

# Clear Cron Jobs
wp cron event delete 'fetch_placeholders'

