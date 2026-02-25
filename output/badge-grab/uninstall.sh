#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'badge_grab_url'
wp option delete 'badge_grab_title'
wp option delete 'badge_grab_image'

