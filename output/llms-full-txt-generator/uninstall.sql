-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('llms_full_txt_generator_initialized', 'llms_full_txt_generator_post_types', 'llms_full_txt_generator_post_types_order', 'llms_full_txt_generator_files_to_generate', 'llms_full_txt_generator_respect_seo', 'llms_full_txt_generator_include_urls', 'llms_full_txt_generator_exclude_urls', 'llms_full_txt_generator_include_admin_email', 'llms_full_txt_generator_admin_email', 'llms_full_txt_generator_enabled', 'llms_full_txt_generator_products_enabled', 'llms_full_txt_generator_include_excerpt', 'llms_full_txt_generator_company_name', 'llms_full_txt_generator_update_frequency', 'llms_full_txt_generator_multilingual', 'llms_full_txt_generator_show_product_price', 'llms_full_txt_generator_show_product_categories', 'llms_full_txt_generator_show_product_tags', 'llms_full_txt_generator_show_product_ratings', 'llms_full_txt_generator_show_product_url', 'llms_full_txt_generator_show_product_image_url', 'llms_full_txt_generator_exclude_product_categories', 'llms_full_txt_generator_exclude_product_tags', 'llms_full_txt_generator_show_post_categories', 'llms_full_txt_generator_show_post_tags', 'llms_full_txt_generator_exclude_post_categories', 'llms_full_txt_generator_exclude_post_tags', 'llms_full_txt_generator_company_description');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_yoast_wpseo_meta-robots-noindex', 'rank_math_robots', '_seopress_robots_index');
DELETE FROM wp_usermeta WHERE meta_key IN ('_yoast_wpseo_meta-robots-noindex', 'rank_math_robots', '_seopress_robots_index');
DELETE FROM wp_termmeta WHERE meta_key IN ('_yoast_wpseo_meta-robots-noindex', 'rank_math_robots', '_seopress_robots_index');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_yoast_wpseo_meta-robots-noindex', 'rank_math_robots', '_seopress_robots_index');

