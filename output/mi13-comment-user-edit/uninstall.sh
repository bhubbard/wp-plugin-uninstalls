#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mi13_comment_user_edit'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mi13_comment_user_edit_%' OR option_name LIKE '_site_transient_mi13_comment_user_edit_%'"

