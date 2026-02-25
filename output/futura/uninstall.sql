-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('futura_title_text', 'futura_html_posts_wrap_bg_color', 'futura_html_border_color', 'futura_html_border_title_color', 'futura_html_h3_font_size', 'futura_post_title_font_size', 'futura_summary_font_size', 'futura_author_font_size', 'futura_deactivate_style', 'futura_items_display', 'futura_custom_post_setting', 'futura_custom_post_not_show_setting', 'futura_custom_fields_setting', 'futura_record_setting', 'futura_number_of_posts', 'futura_display', 'futura_displya_device', 'futura_default_thumbnail', 'futura_content_percentage', 'futura_title_percentage', 'futura_excerpt_percentage', 'futura_image_percentage', 'futura_tag_percentage', 'futura_tax_percentage', 'futura_cf_percentage', 'futura_author_percentage', 'futura_custom_post_types_s', 'futura_search-custom_field_setting', 'futura_license', 'futura_paged', 'futura_user_id', 'futura_stored_version', 'futura_last_action_time', 'futura_min_tag_count', 'futura_payment_status', 'futura_check_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('futura_percentage_for_post', 'futura_exclude_post', 'futura_related_posts', 'futura_include_post', 'futura_mutal_link', 'futura_tags', 'futura_click_record');
DELETE FROM wp_usermeta WHERE meta_key IN ('futura_percentage_for_post', 'futura_exclude_post', 'futura_related_posts', 'futura_include_post', 'futura_mutal_link', 'futura_tags', 'futura_click_record');
DELETE FROM wp_termmeta WHERE meta_key IN ('futura_percentage_for_post', 'futura_exclude_post', 'futura_related_posts', 'futura_include_post', 'futura_mutal_link', 'futura_tags', 'futura_click_record');
DELETE FROM wp_commentmeta WHERE meta_key IN ('futura_percentage_for_post', 'futura_exclude_post', 'futura_related_posts', 'futura_include_post', 'futura_mutal_link', 'futura_tags', 'futura_click_record');

