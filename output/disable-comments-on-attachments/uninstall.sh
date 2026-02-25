#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpins_deactivation_reason_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpins_deactivation_details_%'"
wp option delete 'wpins_allow_tracking'
wp option delete 'wpins_last_track_time'
wp option delete 'wpins_block_notice'

