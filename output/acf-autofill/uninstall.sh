#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'small_image_id'
wp option delete 'medium_image_id'
wp option delete 'large_image_id'

