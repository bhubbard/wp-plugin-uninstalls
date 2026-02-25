#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'images_to_avif_settings'
wp option delete 'images_to_avif_active'
wp option delete 'images_to_avif_methods'

