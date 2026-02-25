#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ambriel_api_key_field'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ambriel_wc_status_%'"
wp option delete 'ambriel_api_key'
wp option delete 'ambriel_decline_message'

