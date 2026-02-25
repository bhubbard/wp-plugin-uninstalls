#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'migrated_to_version'
wp option delete 'srs_pageViews_count'
wp option delete 'srs_visitors_count'
wp option delete 'srs_update_ran'
wp option delete 'srs_simple_hits_counter_version'
wp option delete 'srs_pageViews_number_format_count'

