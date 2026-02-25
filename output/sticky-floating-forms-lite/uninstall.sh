#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sf_forms_settings'
wp option delete 'dismissed-notice-upgrade-sffp-cww-pro'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dismissed-%'"

