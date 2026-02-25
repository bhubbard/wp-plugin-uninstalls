-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('relpoststh_bordercolor', 'relpoststh_background', 'relpoststh_hoverbackground', 'relpoststh_fontsize', 'relpoststh_fontcolor', 'relpoststh_single_only', 'relpoststh_column', 'relpoststh_column_t', 'relpoststh_column_m', 'relpoststh_image_size', 'relpoststh_mobile_view', 'relpoststh_show_taxonomy', 'relpoststh_post_types', 'relpoststh_onlywiththumbs', 'relpoststh_articlefirstimage', 'relpoststh_show_date', 'relpoststh_output_style', 'relpoststh_date_format', 'relpoststh_cleanhtml', 'relpoststh_auto', 'relpoststh_top_text', 'relpoststh_number', 'relpoststh_relation', 'relpoststh_default_image', 'relpoststh_poststhname', 'relpoststh_fontfamily', 'relpoststh_textlength', 'relpoststh_excerptlength', 'relpoststh_thsource', 'relpoststh_customfield', 'relpoststh_theme_resize_url', 'relpoststh_customwidth', 'relpoststh_customheight', 'relpoststh_textblockheight', 'rpt_post_sort', 'relpoststh_categories', 'relpoststh_categoriesall', 'relpoststh_show_categoriesall', 'relpoststh_show_categories', 'relpoststh_devmode', 'relpoststh_title_tag', 'relpoststh_spacing', 'relpoststh_startdate', 'relpoststh_custom_taxonomies', 'wpb_sdk_module_id', 'wpb_sdk_module_slug', 'wpb_api_cache', 'wpb_sdk_related-posts-thumbnails', '_rpt_optin', 'rpt_review_dismiss');
DELETE FROM wp_options WHERE option_name IN ('rpt_active_time', 'update_plugins', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE 'wpb_sdk_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_yoast_wpseo_primary_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_yoast_wpseo_primary_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_yoast_wpseo_primary_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_yoast_wpseo_primary_%';

