#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pn_cookies_manager_options_changed'
wp option delete 'pn_cookies_manager_color_main'
wp option delete 'pn_cookies_manager_bg_color_main'
wp option delete 'pn_cookies_manager_border_color_main'
wp option delete 'pn_cookies_manager_color_main_alt'
wp option delete 'pn_cookies_manager_bg_color_main_alt'
wp option delete 'pn_cookies_manager_border_color_main_alt'
wp option delete 'pn_cookies_manager_color_main_blue'
wp option delete 'pn_cookies_manager_color_main_grey'
wp option delete 'pn_cookies_manager_options_remove'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_id'"
wp option delete 'pn_cookies_manager_pages_cookie'
wp option delete 'pn_cookies_manager_url_main'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_duration'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_description'"
wp option delete 'pn_cookies_manager_redirecting'
wp option delete 'pn_cookies_manager_banner_bg_color'
wp option delete 'pn_cookies_manager_banner_text_color'
wp option delete 'pn_cookies_manager_banner_btn_accept_bg'
wp option delete 'pn_cookies_manager_banner_btn_accept_color'
wp option delete 'pn_cookies_manager_banner_btn_reject_bg'
wp option delete 'pn_cookies_manager_banner_btn_reject_color'
wp option delete 'pn_cookies_manager_banner_btn_settings_color'
wp option delete 'pn_cookies_manager_banner_border_radius'
wp option delete 'pn_cookies_manager_banner_reopen_color'
wp option delete 'pn_cookies_manager_google_consent_mode'
wp option delete 'pn_cookies_manager_cookie_expiry'
wp option delete 'pn_cookies_manager_banner_overlay'
wp option delete 'pn_cookies_manager_banner_settings_text'
wp option delete 'pn_cookies_manager_banner_accept_text'
wp option delete 'pn_cookies_manager_banner_reject_text'
wp option delete 'pn_cookies_manager_banner_position'
wp option delete 'pn_cookies_manager_banner_layout'
wp option delete 'pn_cookies_manager_banner_alignment'
wp option delete 'pn_cookies_manager_banner_title'
wp option delete 'pn_cookies_manager_banner_message'
wp option delete 'pn_cookies_manager_banner_privacy_url'
wp option delete 'pn_cookies_manager_banner_btn_settings_bg'

# Delete Transients
wp transient delete 'pn_cookies_manager_just_activated'

