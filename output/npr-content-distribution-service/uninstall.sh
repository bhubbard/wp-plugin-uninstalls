#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'npr_cds_pull_url'
wp option delete 'npr_cds_token'
wp option delete 'npr_cds_pull_post_type'
wp option delete 'npr_cds_import_tags'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'npr_cds_query_%'"
wp option delete 'npr_cds_org_id'
wp option delete 'npr_cds_prefix'
wp option delete 'npr_cds_push_url'
wp option delete 'npr_cds_image_format'
wp option delete 'npr_cds_image_quality'
wp option delete 'npr_cds_image_width'
wp option delete 'npr_cds_query_use_featured'
wp option delete 'npr_cds_skip_promo_cards'
wp option delete 'npr_cds_display_attribution'
wp option delete 'npr_cds_push_use_custom_map'
wp option delete 'npr_cds_mapping_body'
wp option delete 'npr_cds_mapping_media_credit'
wp option delete 'npr_cds_mapping_media_agency'
wp option delete 'npr_cds_push_default'
wp option delete 'npr_cds_push_one_homepage_default'
wp option delete 'npr_cds_mapping_title'
wp option delete 'npr_cds_mapping_byline'
wp option delete 'npr_cds_query_multi_cron_interval'
wp option delete 'dp_npr_query_multi_cron_interval'
wp option delete 'ds_npr_num'
wp option delete 'npr_cds_num'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ds_npr_query_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ds_npr_query_profileTypeID_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ds_npr_query_publish_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ds_npr_query_category_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ds_npr_query_tags_%'"
wp option delete 'ds_npr_pull_post_type'
wp option delete 'ds_npr_push_post_type'
wp option delete 'npr_cds_push_post_type'
wp option delete 'ds_npr_api_org_id'
wp option delete 'dp_npr_query_run_multi'
wp option delete 'npr_cds_query_run_multi'
wp option delete 'dp_npr_query_use_featured'
wp option delete 'ds_npr_push_use_custom_map'
wp option delete 'ds_npr_api_mapping_title'
wp option delete 'ds_npr_api_mapping_body'
wp option delete 'ds_npr_api_mapping_byline'
wp option delete 'ds_npr_api_mapping_media_credit'
wp option delete 'ds_npr_api_mapping_media_agency'
wp option delete 'dp_npr_query_use_layout'
wp option delete 'ds_npr_story_default_permission'
wp option delete 'ds_npr_api_key'
wp option delete 'ds_npr_api_pull_url'
wp option delete 'ds_npr_api_push_url'
wp option delete 'ds_npr_api_get_multi_settings'
wp option delete 'dp_npr_push_use_custom_map'
wp option delete 'npr_cds_old_options'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_meta_keys' OR option_name LIKE '_site_transient_%_meta_keys'"

# Clear Cron Jobs
wp cron event delete 'npr_cds_hourly_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '#NONE#'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '#NONE#'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '#NONE#'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '#NONE#'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_send_to_one'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_send_to_one'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_send_to_one'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_send_to_one'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nprone_featured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nprone_featured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nprone_featured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nprone_featured'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'enclosure'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'enclosure'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'enclosure'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'enclosure'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'npr_story_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'npr_story_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'npr_story_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'npr_story_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_send_to_nprone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_send_to_nprone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_send_to_nprone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_send_to_nprone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'epc_primary_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'epc_primary_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'epc_primary_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'epc_primary_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nprone_expiry_8601'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nprone_expiry_8601'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nprone_expiry_8601'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nprone_expiry_8601'"
