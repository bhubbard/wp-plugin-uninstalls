#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rewrite_rules'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_hosting_purge_url'"
wp option delete 'clear_cache_everywhere_last_results'

