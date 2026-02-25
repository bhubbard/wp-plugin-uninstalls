#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp option delete 'mic_make2x'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"
wp option delete 'jetpack_photon'
wp option delete 'mic_options'

