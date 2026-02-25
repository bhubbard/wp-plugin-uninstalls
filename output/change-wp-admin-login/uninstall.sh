#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aio_login_limit_attempts_enable'
wp option delete 'aio_login_pro__two_factor_auth_enable'
wp option delete 'aio_login_block_ip_address_enable'
wp option delete 'aio_login_user_enumeration_duration'
wp option delete 'aio_login_user_enumeration_enable'
wp option delete 'aio_login_user_enumeration_oembed'
wp option delete 'aio_login_user_enumeration_sitemaps'
wp option delete 'aio_login_user_enumeration_comments'
wp option delete 'aio_login_user_enumeration_rest_api'
wp option delete 'aio_login_user_enumeration_login_registration'
wp option delete 'aio_login_user_enumeration_log'
wp option delete 'rwl_page'
wp option delete 'aio_login__cwpal_enable'
wp option delete 'rwl_page_input'
wp option delete 'rwl_redirect_field'
wp option delete 'rwl_redirect'
wp option delete 'aio_login__version'
wp option delete 'aio_login_change_login_url_enable'
wp option delete 'aio_login__update'
wp option delete 'aio_login_limit_attempts_timeout'
wp option delete 'aio_login_configured_providers_list'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'aio_login_google_recaptcha_enable'
wp option delete 'aio_login_google_recaptcha_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_site_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_secret_key'"
wp option delete 'aio_login_google_recaptcha_v2_theme'
wp option delete 'aio_login_google_recaptcha_v3_threshold'
wp option delete 'aio_login__customization_templates'
wp option delete 'aio_login_google_recaptcha_v2_site_key'
wp option delete 'aio_login_google_recaptcha_v2_secret_key'
wp option delete 'aio_login_google_recaptcha_v3_site_key'
wp option delete 'aio_login_google_recaptcha_v3_secret_key'
wp option delete 'aio_login_hcaptcha_enable'
wp option delete 'aio_login_limit_attempts_maximum_attempts'
wp option delete 'aio_login_limit_attempts_lockout_message'
wp option delete 'aio_login_logo'
wp option delete 'aio_login_logo_url'
wp option delete 'aio_login_logo_width'
wp option delete 'aio_login_logo_height'
wp option delete 'aio_login_margin_bottom'
wp option delete 'aio_login_background_color'
wp option delete 'aio_login_background_image'
wp option delete 'aio_login_custom-css'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_aio_login__user_attempts_%' OR option_name LIKE '_site_transient_aio_login__user_attempts_%'"
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

