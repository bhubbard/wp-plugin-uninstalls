#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_redisearch_last_indexed'
wp option delete 'wp_redisearch_need_upgrade_index'
wp option delete 'wp_redisearch_feature_settings'
wp option delete 'wp_redisearch_default_language'
wp option delete 'wp_redisearch_feature_requires_reindex'
wp option delete 'fj_tests_fea'
wp option delete 'fj_tests_fea_sl'
wp option delete 'fj_tests_fea_sett'
wp option delete 'wp_redisearch_index_meta'
wp option delete 'wp_redisearch_index_name'
wp option delete 'wp_redisearch_server'
wp option delete 'wp_redisearch_connection_scheme'
wp option delete 'wp_redisearch_port'
wp option delete 'wp_redisearch_password'
wp option delete 'wp_redisearch_search_in_admin'

# Delete Transients
wp transient delete 'wp_redisearch_wpcli_indexing'

