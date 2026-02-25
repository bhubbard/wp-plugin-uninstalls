#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-basic-js'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-load-css'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-ads'"

