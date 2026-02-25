#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'simple_banner_text%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'hide_simple_banner%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'simple_banner_color%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'simple_banner_text_color%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'simple_banner_link_color%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'simple_banner_close_color%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'simple_banner_font_size%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'simple_banner_z_index%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'simple_banner_position%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'close_button_enabled%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'close_button_expiration%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'simple_banner_prepend_element%'"
wp option delete 'header_margin'
wp option delete 'header_padding'
wp option delete 'wp_body_open_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'simple_banner_custom_css%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'simple_banner_text_custom_css%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'simple_banner_button_css%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'simple_banner_scrolling_custom_css%'"
wp option delete 'pro_version_enabled'
wp option delete 'simple_banner_pro_license_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'simple_banner_insert_inside_element%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'simple_banner_start_after_date%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'simple_banner_remove_after_date%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'disabled_on_posts%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'simple_banner_disabled_page_paths%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'disabled_pages_array%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'site_custom_css%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'keep_site_custom_css%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'site_custom_js%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'keep_site_custom_js%'"
wp option delete 'permissions_array'
wp option delete 'simple_banner_debug_mode'
wp option delete 'pro_version_activation_code'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'header_margin%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'header_padding%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wp_body_open_enabled%'"
wp option delete 'simple_banner_clear_cache'

