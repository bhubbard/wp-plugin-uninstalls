#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpsj_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_licensed'"
wp option delete 'wpscarcityjeet_settings'

