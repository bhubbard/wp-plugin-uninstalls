#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_referer_allowed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_user_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_other_init'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_other_uninstall'"
wp option delete 'login-by-referer_other_uninstall'

