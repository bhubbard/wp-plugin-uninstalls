#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bbwp_update_message'
wp option delete 'bbwp_error_message'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_user_created_metaboxes'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_user_created_pages'"

