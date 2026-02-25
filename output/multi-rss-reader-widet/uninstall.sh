#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%items_format'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%remove_title_pattern'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%item_format'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%item_format_titlelayout'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%item_format_cardlayout'"
wp option delete 'url'

