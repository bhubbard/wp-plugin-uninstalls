#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'emailchef_invalid_credentials_notice'
wp option delete 'emailchef_settings'
wp option delete 'fs_contact_global'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fs_contact_form%'"

# Clear Cron Jobs
wp cron event delete 'check_emailchef_credentials'

