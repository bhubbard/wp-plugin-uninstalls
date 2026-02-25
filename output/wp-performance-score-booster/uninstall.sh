#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wppsb_plugin_version'
wp option delete 'wppsb_remove_query_strings'
wp option delete 'wppsb_enable_gzip'
wp option delete 'wppsb_expire_caching'
wp option delete 'wppsb_instant_page_preload'
wp option delete 'wppsb_review_notice'
wp option delete 'wppsb_activation_date'

