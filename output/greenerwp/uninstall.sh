#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'greenerwp_version'
wp option delete 'greenerwp_jpeg_quality'
wp option delete 'greenerwp_wpcf7_jquery_fix_enabled'
wp option delete 'greenerwp_web_fonts_disable'
wp option delete 'greenerwp_image_previews_enabled'
wp option delete 'greenerwp_recipes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'greenerwp_%'"
wp option delete 'greenerwp_statistics_enabled'
wp option delete 'greenerwp_image_previews_lazy_loading'

