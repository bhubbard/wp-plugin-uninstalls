#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_gtm_id'"

