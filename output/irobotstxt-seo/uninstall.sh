#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'irseo_options'
wp option delete 'irseo_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'irseo_%'"

