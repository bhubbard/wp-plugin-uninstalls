#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%enable'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%cookie'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ttl'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ttl_unit'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%homepage_ttl'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ips'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%debug'"
wp option delete 'onecom_vcache_info'
wp option delete 'proisp_varnish_caching_ttl'
wp option delete 'proisp_varnish_caching_homepage_ttl'
wp option delete 'proisp_varnish_caching_ttl_unit'
wp option delete 'onecom_staging_existing_live'
wp option delete 'onecom_plugin_version_vcache'
wp option delete 'oc_cdn_enabled'
wp option delete 'oc_rules_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%purge_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%truncate_notice'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ssl'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%hosts'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%dynamic_host'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%stats_json_file'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%purge_menu_save'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oct_exclude_from_cache'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oct_exclude_from_cache'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oct_exclude_from_cache'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oct_exclude_from_cache'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%ttl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%ttl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%ttl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%ttl'"
