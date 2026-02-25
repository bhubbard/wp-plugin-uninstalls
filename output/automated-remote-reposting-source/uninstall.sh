#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_arrp_dradcom_source_destination'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wp_arrp_dradcom_settings_%'"

