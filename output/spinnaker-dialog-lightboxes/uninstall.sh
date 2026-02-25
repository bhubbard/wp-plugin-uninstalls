#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'spinnaker_img_trigger_height'
wp option delete 'spinnaker_download_stats'
wp option delete 'spinnaker_install_date'

