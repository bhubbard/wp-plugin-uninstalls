#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp option delete 'notable_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_show'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_header'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_post_url'"
wp option delete 'notable_fark_category'
wp option delete 'notable_image_path'
wp option delete 'notable_spacer_string'

