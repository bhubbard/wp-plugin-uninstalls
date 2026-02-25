#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_language'"
wp option delete 'fetch_meditation_timezone'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fetch_meditation_%'"
wp option delete 'fetch_meditation_excerpt'
wp option delete 'fetch_meditation_read_more_url'
wp option delete 'fetch_meditation_jft_language'
wp option delete 'fetch_meditation_spad_language'
wp option delete 'fetch_meditation_book'
wp option delete 'fetch_meditation_layout'
wp option delete 'fetch_meditation_theme'
wp option delete 'fetch_meditation_tabs_layout'

