#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'maxtdesign_rbp_cache_logs'
wp option delete 'maxtdesign_rbp_last_cache_clear'
wp option delete 'maxtdesign_rbp_db_logs'
wp option delete 'maxtdesign_rbp_query_logs'
wp option delete 'maxtdesign_rbp_cache_method'
wp option delete 'maxtdesign_rbp_version'
wp option delete 'maxtdesign_rbp_last_performance_cleanup'

# Delete Transients
wp transient delete 'maxtdesign_rbp_hook_stats'
wp transient delete 'maxtdesign_rbp_activation_notice'

