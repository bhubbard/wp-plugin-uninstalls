#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'byteplugs_login_template'
wp option delete 'byteplugs_login_colors'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'byteplugs_login_image_%'"

