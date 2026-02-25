-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ezas_mailchimp_api_key', 'ezas_uninstall_keep_data', 'ezas_load_custom_styling', 'ezas_css_border_color', 'ezas_css_categories_background_color', 'ezas_css_image_width', 'ezas_css_post_background_color', 'ezas_css_post_background_color_hover', 'ezas_css_post_text_color', 'ezas_css_post_text_color_hover', 'ezas_css_results_width', 'ezas_css_tags_background_color', 'ezas_debug_mode');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('caching', 'count', 'post_types', 'text_empty', 'post_heading_tag', 'post_excerpt_tag', 'featured_image_position', 'show_categories', 'show_tags', 'output_builder', 'show_categories_count', '_price', 'show_tags_count', 'min_length', 'text_searching', 'use_form', 'form_placeholder_text', 'form_button_text', 'theme', 'result_wrapper_position', 'loading_icon');
DELETE FROM wp_usermeta WHERE meta_key IN ('caching', 'count', 'post_types', 'text_empty', 'post_heading_tag', 'post_excerpt_tag', 'featured_image_position', 'show_categories', 'show_tags', 'output_builder', 'show_categories_count', '_price', 'show_tags_count', 'min_length', 'text_searching', 'use_form', 'form_placeholder_text', 'form_button_text', 'theme', 'result_wrapper_position', 'loading_icon');
DELETE FROM wp_termmeta WHERE meta_key IN ('caching', 'count', 'post_types', 'text_empty', 'post_heading_tag', 'post_excerpt_tag', 'featured_image_position', 'show_categories', 'show_tags', 'output_builder', 'show_categories_count', '_price', 'show_tags_count', 'min_length', 'text_searching', 'use_form', 'form_placeholder_text', 'form_button_text', 'theme', 'result_wrapper_position', 'loading_icon');
DELETE FROM wp_commentmeta WHERE meta_key IN ('caching', 'count', 'post_types', 'text_empty', 'post_heading_tag', 'post_excerpt_tag', 'featured_image_position', 'show_categories', 'show_tags', 'output_builder', 'show_categories_count', '_price', 'show_tags_count', 'min_length', 'text_searching', 'use_form', 'form_placeholder_text', 'form_button_text', 'theme', 'result_wrapper_position', 'loading_icon');

