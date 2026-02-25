#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'eprobe_weighting'
wp option delete 'elasticpress_synonyms_post_id'
wp option delete 'eprobe_credentials'
wp option delete 'eprobe_host'
wp option delete 'eprobe_subscription_id'
wp option delete 'active_sitewide_plugins'
wp option delete 'eprobe_language'

# Delete Transients
wp transient delete 'eprobe_es_info_response_code'
wp transient delete 'eprobe_es_info_response_error'
wp transient delete 'eprobe_cli_sync_progress'
wp transient delete 'eprobe_wpcli_sync_interrupted'
wp transient delete 'eprobe_sync_interrupted'
wp transient delete 'eprobe_es_info'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_eprobe_related_posts_%' OR option_name LIKE '_site_transient_eprobe_related_posts_%'"
wp transient delete 'eprobe_post_mapping_version'
wp transient delete 'eprobe_meta_field_keys'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_eprobe_meta_field_keys_%' OR option_name LIKE '_site_transient_eprobe_meta_field_keys_%'"
wp transient delete 'eprobe_autosuggest_query_request_cache'

# Direct DB Queries (Fallback)
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
