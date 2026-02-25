#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'algolia_autocomplete_enabled'
wp option delete 'algolia_autocomplete_debounce'
wp option delete 'algolia_autocomplete_config'
wp option delete 'algolia_override_native_search'
wp option delete 'algolia_instantsearch_template_version'
wp option delete 'algolia_application_id'
wp option delete 'algolia_search_api_key'
wp option delete 'algolia_api_key'
wp option delete 'algolia_index_name_prefix'
wp option delete 'algolia_powered_by_enabled'
wp option delete 'algolia_insights_enabled'
wp option delete 'algolia_synced_indices_ids'
wp option delete 'algolia_api_is_reachable'
wp option delete 'algolia_pmxi_page'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wp_algolia_child_posts_%' OR option_name LIKE '_site_transient_wp_algolia_child_posts_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_records_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_records_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_records_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_records_count'"
