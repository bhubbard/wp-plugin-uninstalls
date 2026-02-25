#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wsml_screenshot_api_key'
wp option delete 'wsml_screenshot_viewport_width'
wp option delete 'wsml_screenshot_viewport_height'
wp option delete 'wsml_screenshot_image_format'

