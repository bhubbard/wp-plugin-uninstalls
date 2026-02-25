#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%locked_posts'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%lock_type'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%lock_toggle'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%allow_admin'"

