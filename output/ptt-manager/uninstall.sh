#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%active'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%posttype'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%taxonomy'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%posttype_block'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%taxonomy_block'"

