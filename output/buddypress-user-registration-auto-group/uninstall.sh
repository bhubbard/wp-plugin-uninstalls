#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'auto_group_name'
wp option delete 'auto_group_slug'
wp option delete 'auto_group_desc'
wp option delete 'auto_group_status'

