#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'speedsize_enabled'
wp option delete 'speedsize_client_id'
wp option delete 'speedsize_client_id_active'
wp option delete 'speedsize_service_base_url'
wp option delete 'speedsize_client_allow_upscale'
wp option delete 'speedsize_client_cdn_syntax'
wp option delete 'speedsize_client_forbidden_paths'
wp option delete 'speedsize_client_whitelist_domains'
wp option delete 'speedsize_js_snippet_enabled'
wp option delete 'speedsize_mute_all_videos'
wp option delete 'speedsize_realtime_parsing_enabled'
wp option delete 'speedsize_css_files_parsing_enabled'
wp option delete 'speedsize_css_files_parsing_excluded_keywords'
wp option delete 'speedsize_keep_https_scheme_on_wrapped_media_urls'
wp option delete 'speedsize_omit_client_id_from_wrapped_media_urls'
wp option delete 'speedsize_disable_processor_filters'

# Clear Cron Jobs
wp cron event delete 'speedsize_cron_clear_expired_css_cache'
wp cron event delete 'speedsize_cron_refresh_client_settings'

