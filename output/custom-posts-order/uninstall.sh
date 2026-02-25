#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'porder_name_%'"
wp option delete 'porder_name'
wp option delete 'postsdetails'

