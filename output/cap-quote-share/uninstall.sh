#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'capqsh_download_btn_bg_color'
wp option delete 'capqsh_download_btn_text_color'
wp option delete 'capqsh_enable_image_download'
wp option delete 'capqsh_enable_shortcode'

