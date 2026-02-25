-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ta_link_prefix', 'ta_link_prefix_custom', 'ta_uncloak_link_per_link', 'ta_category_to_uncloak', 'ta_legacy_uploader', 'ta_link_redirect_type', 'ta_no_follow', 'ta_new_window', 'ta_pass_query_str', 'ta_additional_rel_tags', 'ta_disable_cat_auto_select', 'ta_show_cat_in_slug', 'ta_activation_code_triggered', 'ta_database_tables_created', 'ta_link_insertion_type', 'ta_disable_text_editor_buttons', 'ta_guided_tour_status', 'ta_enable_link_fixer', 'ta_used_link_prefixes', 'ta_disable_idat_link_class', 'ta_disable_title_attribute', 'ta_disable_visual_editor_buttons', 'idatOptions', 'tap_amazon_associate_tags', 'tap_azon_import_images', 'ta_settings_initialized', 'ta_links_to_uncloak', 'ta_uncloak_link_per_category', 'ta_enable_stats_reporting_module', 'ta_flush_rewrite_rules');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ta_category_slug_id', '_ta_category_slug', 'idatData');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ta_category_slug_id', '_ta_category_slug', 'idatData');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ta_category_slug_id', '_ta_category_slug', 'idatData');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ta_category_slug_id', '_ta_category_slug', 'idatData');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%image_ids';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%image_ids';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%image_ids';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%image_ids';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%rel_tags';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%rel_tags';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%rel_tags';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%rel_tags';

