#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tickset_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%onboarding_admin_notice_dismissed'"

