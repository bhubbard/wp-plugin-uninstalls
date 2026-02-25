#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%prevnext'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%active'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%suffix'"

