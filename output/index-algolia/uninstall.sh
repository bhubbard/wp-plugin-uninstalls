#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'index_algolia_glob'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'index_algolia_%'"
wp option delete 'algolia_indexing_indices'
wp option delete 'index_algolia_application_id'
wp option delete 'index_algolia_search_api_key'
wp option delete 'index_algolia_write_api_key'
wp option delete 'index_algolia_index_prefix'
wp option delete 'index_algolia_js_vars'
wp option delete 'index_algolia_indices'

