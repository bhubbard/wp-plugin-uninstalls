#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'maps_block_apple'
wp option delete 'amfwp_settings'
wp option delete 'maps_block_apple_team_id'
wp option delete 'maps_block_apple_key_id'
wp option delete 'maps_block_apple_private_key'

