#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'magenet_links_show_by'
wp option delete 'magenet_links_autoinstall_key'
wp option delete 'magenet_links_last_update'

