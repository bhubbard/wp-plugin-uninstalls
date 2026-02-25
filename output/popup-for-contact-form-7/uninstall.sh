#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'enabled-cf7-form'
wp option delete 'popup_description'
wp option delete 'popup_background'
wp option delete 'image_url'
wp option delete 'popup_font_color'
wp option delete 'popup_width'
wp option delete 'popup_height'
wp option delete 'popup_duration'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%cf7error' OR option_name LIKE '_site_transient_%cf7error'"

