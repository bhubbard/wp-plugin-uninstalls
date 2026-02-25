#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'widget_ep-facet-meta'
wp option delete 'widget_ep-facet-meta-range'
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'elasticpress_weighting'
wp option delete 'elasticpress_synonyms_post_id'
wp option delete 'ep_credentials'
wp option delete 'ep_host'
wp option delete 'active_sitewide_plugins'
wp option delete 'ep_language'

# Delete Transients
wp transient delete 'ep_es_info_response_code'
wp transient delete 'ep_es_info_response_error'
wp transient delete 'ep_cli_sync_progress'
wp transient delete 'ep_wpcli_sync_interrupted'
wp transient delete 'ep_sync_interrupted'
wp transient delete 'ep_es_info'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ep_related_posts_%' OR option_name LIKE '_site_transient_ep_related_posts_%'"
wp transient delete 'ep_post_mapping_version'
wp transient delete 'ep_meta_field_keys'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ep_meta_field_keys_%' OR option_name LIKE '_site_transient_ep_meta_field_keys_%'"
wp transient delete 'ep_autosuggest_query_request_cache'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ep_exclude_from_search'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ep_exclude_from_search'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ep_exclude_from_search'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ep_exclude_from_search'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'search_term'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'search_term'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'search_term'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'search_term'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ep_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ep_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ep_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ep_token'"
