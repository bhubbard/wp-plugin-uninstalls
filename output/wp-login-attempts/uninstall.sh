#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'g_reCaptcha_version'
wp option delete 'g_reCaptcha_site_key'
wp option delete 'g_reCaptcha_site_key_v3'
wp option delete 'g_reCaptcha_secret_key'
wp option delete 'g_reCaptcha_secret_key_v3'
wp option delete 'wla_disable_login_attmpt'
wp option delete 'g_reCaptcha_enable'
wp option delete 'wla_lim_login_handle_log_key'
wp option delete 'wla_lim_logo_url'
wp option delete 'wla_lim_logo_file'
wp option delete 'wla_lim_login_background_img'
wp option delete 'wla_lim_login_background_color'
wp option delete 'wla_lim_lost_ur_pwd'
wp option delete 'wla_lim_hide_login_page'
wp option delete 'wla_lim_redirect_login_wpadmin'
wp option delete 'wla_lim_lockouts_cal'
wp option delete 'wla_lim_login_retries'
wp option delete 'wla_lim_login_retries_valid'
wp option delete 'wla_lim_lockoutstotal'
wp option delete 'site_name'
wp option delete 'wla_lim_login_clienttype_key'
wp option delete 'wla_lim_login_allowed_retries_key'
wp option delete 'wla_lim_login_lockout_duration_key'
wp option delete 'wla_lim_login_allowed_lockouts_key'
wp option delete 'wla_lim_login_long_duration_key'
wp option delete 'wla_lim_login_valid_duration_key'
wp option delete 'wla_lim_login_lockout_notify_key'
wp option delete 'wla_lim_login_notify_email_after_key'
wp option delete 'wla_lim_login_cookies_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wla_lim_prev_cookie'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wla_lim_prev_cookie'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wla_lim_prev_cookie'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wla_lim_prev_cookie'"
