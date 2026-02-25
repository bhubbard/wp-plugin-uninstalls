#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rt03'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'rt03id_%'"
wp option delete 'ruby01VA'

