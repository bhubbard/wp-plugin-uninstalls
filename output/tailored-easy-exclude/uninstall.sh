#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tailored_post_excluded_pages'
wp option delete 'tailored_page_excluded_pages'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_excluded_pages'"

