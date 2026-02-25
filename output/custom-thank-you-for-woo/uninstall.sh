#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcty_thankyou_page_header'
wp option delete 'wcty_thankyou_page_heading'
wp option delete 'wcty_thankyou_page_heading_color_code'
wp option delete 'wcty_thankyou_page_font_style'
wp option delete 'upload_setting_image'
wp option delete 'wcty_thankyou_page_id'
wp option delete 'wcty_thankyou_page_enable'
wp option delete 'logo-file'

