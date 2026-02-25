#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tfaf_custom_menu_settings'
wp option delete 'tfaf_custom_menu'
wp option delete 'tfaf_image_upload'
wp option delete 'tfaf_plugin_settings'
wp option delete 'tfaf_custom_url'

