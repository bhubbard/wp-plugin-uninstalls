#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpaicw_option_name'
wp option delete 'wpaic_activation_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%options'"

