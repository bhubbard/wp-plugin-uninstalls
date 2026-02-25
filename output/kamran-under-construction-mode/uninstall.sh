#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ucm_enabled'
wp option delete 'ucm_bg_image'
wp option delete 'ucm_bg_image_id'
wp option delete 'ucm_bg_color'
wp option delete 'ucm_font_size'
wp option delete 'ucm_font_family'
wp option delete 'ucm_heading_text'
wp option delete 'ucm_message_text'
wp option delete 'ucm_logo_url'
wp option delete 'ucm_logo_id'

