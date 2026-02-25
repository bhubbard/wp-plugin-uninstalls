#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'orghunter_api_url'
wp option delete 'orghunter_api_key'
wp option delete 'orghunter_charity_search_categories_cache'
wp option delete 'orghunter_charity_search_results_page_id'
wp option delete 'orghunter_affiliate_id'
wp option delete 'orghunter_return_url'
wp option delete 'orghunter_results_count'
wp option delete 'orghunter_powered_by'

