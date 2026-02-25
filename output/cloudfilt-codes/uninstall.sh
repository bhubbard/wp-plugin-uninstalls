#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%restrict'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%exclude_options'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%key_front'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%key_back'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%site_id'"

