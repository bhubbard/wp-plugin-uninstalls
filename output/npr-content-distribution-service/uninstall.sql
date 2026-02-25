-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('npr_cds_pull_url', 'npr_cds_token', 'npr_cds_pull_post_type', 'npr_cds_import_tags', 'npr_cds_org_id', 'npr_cds_prefix', 'npr_cds_push_url', 'npr_cds_image_format', 'npr_cds_image_quality', 'npr_cds_image_width', 'npr_cds_query_use_featured', 'npr_cds_skip_promo_cards', 'npr_cds_display_attribution', 'npr_cds_push_use_custom_map', 'npr_cds_mapping_body', 'npr_cds_mapping_media_credit', 'npr_cds_mapping_media_agency', 'npr_cds_push_default', 'npr_cds_push_one_homepage_default', 'npr_cds_mapping_title', 'npr_cds_mapping_byline', 'npr_cds_query_multi_cron_interval', 'dp_npr_query_multi_cron_interval', 'ds_npr_num', 'npr_cds_num', 'ds_npr_pull_post_type', 'ds_npr_push_post_type', 'npr_cds_push_post_type', 'ds_npr_api_org_id', 'dp_npr_query_run_multi', 'npr_cds_query_run_multi', 'dp_npr_query_use_featured', 'ds_npr_push_use_custom_map', 'ds_npr_api_mapping_title', 'ds_npr_api_mapping_body', 'ds_npr_api_mapping_byline', 'ds_npr_api_mapping_media_credit', 'ds_npr_api_mapping_media_agency', 'dp_npr_query_use_layout', 'ds_npr_story_default_permission', 'ds_npr_api_key', 'ds_npr_api_pull_url', 'ds_npr_api_push_url', 'ds_npr_api_get_multi_settings', 'dp_npr_push_use_custom_map', 'npr_cds_old_options');
DELETE FROM wp_options WHERE option_name LIKE 'npr_cds_query_%';
DELETE FROM wp_options WHERE option_name LIKE 'ds_npr_query_%';
DELETE FROM wp_options WHERE option_name LIKE 'ds_npr_query_profileTypeID_%';
DELETE FROM wp_options WHERE option_name LIKE 'ds_npr_query_publish_%';
DELETE FROM wp_options WHERE option_name LIKE 'ds_npr_query_category_%';
DELETE FROM wp_options WHERE option_name LIKE 'ds_npr_query_tags_%';
DELETE FROM wp_options WHERE option_name LIKE '%_meta_keys';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('#NONE#', '_send_to_one', '_nprone_featured', 'enclosure', 'npr_story_id', '_send_to_nprone', 'epc_primary_category', '_nprone_expiry_8601');
DELETE FROM wp_usermeta WHERE meta_key IN ('#NONE#', '_send_to_one', '_nprone_featured', 'enclosure', 'npr_story_id', '_send_to_nprone', 'epc_primary_category', '_nprone_expiry_8601');
DELETE FROM wp_termmeta WHERE meta_key IN ('#NONE#', '_send_to_one', '_nprone_featured', 'enclosure', 'npr_story_id', '_send_to_nprone', 'epc_primary_category', '_nprone_expiry_8601');
DELETE FROM wp_commentmeta WHERE meta_key IN ('#NONE#', '_send_to_one', '_nprone_featured', 'enclosure', 'npr_story_id', '_send_to_nprone', 'epc_primary_category', '_nprone_expiry_8601');

