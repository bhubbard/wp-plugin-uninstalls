#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpdi_presets'
wp option delete 'wpdi_sample_image_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpdi_preset_%'"
wp option delete 'wpdi_delete_preset_queue'

