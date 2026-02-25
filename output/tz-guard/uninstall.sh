#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tz_securitycode'
wp option delete 'tz_black_ip'
wp option delete 'tz_bot_enable'

