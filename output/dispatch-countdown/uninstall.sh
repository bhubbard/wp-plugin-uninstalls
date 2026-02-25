#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dispatch_countdown_enabled'
wp option delete 'dispatch_countdown_wording'
wp option delete 'dispatch_countdown_monday'
wp option delete 'dispatch_countdown_tuesday'
wp option delete 'dispatch_countdown_wednesday'
wp option delete 'dispatch_countdown_thursday'
wp option delete 'dispatch_countdown_friday'
wp option delete 'dispatch_countdown_saturday'
wp option delete 'dispatch_countdown_sunday'
wp option delete 'dispatch_countdown_blacklist'

