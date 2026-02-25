#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'getinchat_channel_id'
wp option delete 'getinchat_channels'
wp option delete 'gic_setup_step'

