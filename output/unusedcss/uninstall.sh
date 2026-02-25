#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rapidload_license_data'
wp option delete 'rapidload_settings'
wp option delete 'rapidload_do_activation_redirect'
wp option delete 'rapidload_onboard_skipped'
wp option delete 'active_sitewide_plugins'
wp option delete 'rapidload_titan_gear'
wp option delete 'rapidload_privacy_policy_accepted'
wp option delete 'rapidload_cache'
wp option delete 'optml_settings'

# Delete Transients
wp transient delete 'rapidload_cache_disk_updated'
wp transient delete 'rapidload_page_cache_size'

# Clear Cron Jobs
wp cron event delete 'cron_uucss_process_queue'
wp cron event delete 'uucss_run_gpsi_test_for_all'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_uucss_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_uucss_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_uucss_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_uucss_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_clear_post_cache_on_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_clear_post_cache_on_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_clear_post_cache_on_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_clear_post_cache_on_update'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rapidload_js_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rapidload_js_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rapidload_js_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rapidload_js_settings'"
