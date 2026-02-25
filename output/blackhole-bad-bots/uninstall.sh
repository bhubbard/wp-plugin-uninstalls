#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bbb_options'
wp option delete 'bbb_badbots'
wp option delete 'blackhole-bad-bots-dismiss-notice'

