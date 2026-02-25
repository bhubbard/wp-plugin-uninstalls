#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_content_shortcode'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_popup_title'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enable_bootstrap'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enable_animation'"
wp option delete 'popup_on_click_enable_bootstrap'
wp option delete 'popup_on_click_content_shortcode'
wp option delete 'popup_on_click_enable_animation'
wp option delete 'popup_on_click_popup_title'

