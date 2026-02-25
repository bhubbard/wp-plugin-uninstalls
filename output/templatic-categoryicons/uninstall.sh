#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tmpl_cat_icon_activate_msg'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'templtax_%'"

