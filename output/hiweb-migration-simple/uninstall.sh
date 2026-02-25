#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_basedir'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_baseurl'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_basedir_old'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_baseurl_old'"

