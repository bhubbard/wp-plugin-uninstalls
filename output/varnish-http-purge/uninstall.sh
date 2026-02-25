#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vhp_varnish_devmode'
wp option delete 'vhp_varnish_debug'
wp option delete 'vhp_varnish_use_tags'
wp option delete 'vhp_varnish_max_posts_before_all'
wp option delete 'vhp_varnish_ip'
wp option delete 'vhp_varnish_extra_purge_header_name'
wp option delete 'vhp_varnish_extra_purge_header_value'
wp option delete 'vhp_varnish_url'
wp option delete 'vhp_varnish_last_queue_run'
wp option delete 'vhp_cache_test_post_id'
wp option delete 'vhp_cache_test_marker'
wp option delete 'vhp_cache_test_new_marker'
wp option delete 'vhp_varnish_purge_queue'

# Clear Cron Jobs
wp cron event delete 'vhp_process_purge_queue'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vhp_cache_test'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vhp_cache_test'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vhp_cache_test'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vhp_cache_test'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vhp_dismissed_cacheability_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vhp_dismissed_cacheability_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vhp_dismissed_cacheability_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vhp_dismissed_cacheability_notice'"
