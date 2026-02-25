#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'demonstrator_settings'
wp option delete 'demonstrator_instance_themes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'demonstrator_instance_%'"

