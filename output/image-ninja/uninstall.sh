#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'image_ninja_show_activation_notice'
wp option delete 'image_ninja_images_conversion_type'
wp option delete 'image_ninja_images_quality'

