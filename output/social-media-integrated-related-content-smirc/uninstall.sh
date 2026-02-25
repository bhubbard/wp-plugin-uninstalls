#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'required_keyword'
wp option delete 'title_separator'
wp option delete 'exclude_list_google_blogsearch'
wp option delete 'exclude_list_twitter_search'
wp option delete 'header_text'
wp option delete 'header_google_blogsearch'
wp option delete 'header_twitter_search'
wp option delete 'animate_reveal'
wp option delete 'data_source_google_blogsearch'
wp option delete 'num_results_google_blogsearch'
wp option delete 'data_source_twitter_search'
wp option delete 'num_results_twitter_search'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'header_%'"

