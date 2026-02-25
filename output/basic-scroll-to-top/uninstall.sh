#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'media_selector_attachment_id'
wp option delete 'scroll_enable'
wp option delete 'scroll_duration'
wp option delete 'scroll_offset'
wp option delete 'scroll_position'
wp option delete 'scroll_right_margin'
wp option delete 'scroll_bottom_margin'
wp option delete 'scroll_size'
wp option delete 'scroll_button_bgcolor'
wp option delete 'scroll_button_color'
wp option delete 'scroll_text'
wp option delete 'scroll_type'
wp option delete 'scroll_image'

