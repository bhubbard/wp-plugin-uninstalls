#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_field_definitions'"
wp option delete 'website_checkups_token'

