#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'digsign_image_width'
wp option delete 'digsign_image_height'
wp option delete 'digsign_category_name'
wp option delete 'digsign_refresh_interval'
wp option delete 'digsign_slide_delay'
wp option delete 'digsign_enable_qrcodes'
wp option delete 'digsign_layout_type'
wp option delete 'dsp_category_name'
wp option delete 'digsign_header_content'
wp option delete 'digsign_right_panel_content'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
