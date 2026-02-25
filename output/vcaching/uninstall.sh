#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'varnish_caching_enable'
wp option delete 'varnish_caching_ttl'
wp option delete 'varnish_caching_homepage_ttl'
wp option delete 'varnish_caching_ips'
wp option delete 'varnish_caching_dynamic_host'
wp option delete 'varnish_caching_hosts'
wp option delete 'varnish_caching_override'
wp option delete 'varnish_caching_purge_key'
wp option delete 'varnish_caching_cookie'
wp option delete 'varnish_caching_stats_json_file'
wp option delete 'varnish_caching_truncate_notice'
wp option delete 'varnish_caching_purge_menu_save'
wp option delete 'varnish_caching_ssl'
wp option delete 'varnish_caching_debug'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ssl'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%purge_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%truncate_notice'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%debug'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%override'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%homepage_ttl'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ips'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%hosts'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%dynamic_host'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%stats_json_file'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%purge_menu_save'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ttl'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%enable'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%cookie'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%varnish_backends'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%varnish_acls'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%ttl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%ttl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%ttl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%ttl'"
