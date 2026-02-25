#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fatcloud_%'"
wp option delete 'fatcloud_width'
wp option delete 'fatcloud_height'
wp option delete 'fatcloud_netlife_link'
wp option delete 'fatcloud_skin'

