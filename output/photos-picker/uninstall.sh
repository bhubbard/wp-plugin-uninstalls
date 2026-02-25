#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'google_photos_picker_setting_browser_key'
wp option delete 'google_photos_picker_setting_client_id'
wp option delete 'google_photos_picker_setting_img_tag_type'

