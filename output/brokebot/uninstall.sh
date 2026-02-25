#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-general-options'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-messaging-options'"

