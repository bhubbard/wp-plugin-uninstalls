#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cookie_guard_enabled'
wp option delete 'cookie_guard_position'
wp option delete 'cookie_guard_banner_style'
wp option delete 'cookie_guard_banner_position'
wp option delete 'cookie_guard_banner_max_width'
wp option delete 'cookie_guard_banner_text'
wp option delete 'cookie_guard_accept_text'
wp option delete 'cookie_guard_reject_text'
wp option delete 'cookie_guard_customize_text'
wp option delete 'cookie_guard_primary_color'
wp option delete 'cookie_guard_text_color'
wp option delete 'cookie_guard_button_color'
wp option delete 'cookie_guard_button_text_color'
wp option delete 'cookie_guard_icon_bg_color'
wp option delete 'cookie_guard_icon_color'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cookie_guard_%'"
wp option delete 'cookie_guard_version'

