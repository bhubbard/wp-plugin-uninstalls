#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ajax_searchwp_post_types'
wp option delete 'ajax_searchwp_search_placeholder'
wp option delete 'ajax_searchwp_limit'
wp option delete 'ajax_searchwp_no_results_text'

