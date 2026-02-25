#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-errors'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-notices'"
wp option delete 'default_post_edit_rows'

