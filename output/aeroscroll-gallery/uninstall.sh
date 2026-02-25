#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aeroscrollgallery_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-options'"
wp option delete 'aeroscrollgrid_settings'

