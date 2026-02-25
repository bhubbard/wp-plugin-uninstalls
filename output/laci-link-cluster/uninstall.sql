-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('laci_internallinks_taxonomy', 'laci_num_item_dash', 'laci_related_box__content', 'laci_related_box__title', 'laci_related_box__title_color', 'laci_related_box__content_color', 'laci_related_box__bg_color', 'laci_related_box__bd_color', 'laci_related_box__bd_radius', 'laci_related_box__padding_top', 'laci_related_box__padding_right', 'laci_related_box__padding_bottom', 'laci_related_box__padding_left', 'laci_related_box__margin_top', 'laci_related_box__margin_right', 'laci_related_box__margin_bottom', 'laci_related_box__margin_left', 'laci_related_box__show_featured_image', 'laci_related_box__image', 'laci_related_box__image_width', 'laci_related_box__image_height', 'laci_handle_insert_data_all_total', 'laci_delete_shortcode_in_deactivate', 'laci_cron_job_status', 'laci_version', 'laci_handle_insert_data_offset', 'laci_last_updated_date', 'laci_last_updated_time', 'laci_internallinks_updated_for_taxonomy', 'laci_num_item_la', 'laci_delete_shortcode_in_delete', 'laci_license_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('laci_list_key_word', 'laci_main_category_id', 'laci_main_term_id', 'laci_main_post_for_category', '_yoast_wpseo_focuskw', '_yoast_wpseo_focuskeywords', 'rank_math_focus_keyword');
DELETE FROM wp_usermeta WHERE meta_key IN ('laci_list_key_word', 'laci_main_category_id', 'laci_main_term_id', 'laci_main_post_for_category', '_yoast_wpseo_focuskw', '_yoast_wpseo_focuskeywords', 'rank_math_focus_keyword');
DELETE FROM wp_termmeta WHERE meta_key IN ('laci_list_key_word', 'laci_main_category_id', 'laci_main_term_id', 'laci_main_post_for_category', '_yoast_wpseo_focuskw', '_yoast_wpseo_focuskeywords', 'rank_math_focus_keyword');
DELETE FROM wp_commentmeta WHERE meta_key IN ('laci_list_key_word', 'laci_main_category_id', 'laci_main_term_id', 'laci_main_post_for_category', '_yoast_wpseo_focuskw', '_yoast_wpseo_focuskeywords', 'rank_math_focus_keyword');

