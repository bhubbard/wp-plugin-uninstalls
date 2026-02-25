#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_snow_effect_admin_notices'
wp option delete 'wpse_no_bug'
wp option delete 'wp_snow_effect_activation_date'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"

