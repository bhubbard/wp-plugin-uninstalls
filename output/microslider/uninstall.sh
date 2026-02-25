#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'microslider_slide_%'"
wp option delete 'microslider_ids'
wp option delete 'microslider_slide_1'
wp option delete 'microslider_options'

