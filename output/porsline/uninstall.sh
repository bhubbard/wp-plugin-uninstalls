#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'prsline_token'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'prs_%'"
wp option delete 'prsline_location'

