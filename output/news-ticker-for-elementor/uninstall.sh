#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wbelnt_custom_css'
wp option delete 'wbelnt_custom_js'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wbelnt_deactivation_reason_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wbelnt_deactivation_details_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wbelnt_deactivation_email_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wbelnt_deactivation_main_reason_%'"
wp option delete 'wbelnt_installed_time'

