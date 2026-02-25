-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rt_the_post_grid_settings', 'rttpg_spare_me', 'rttpg_plugin_activation_time', 'rttpg_remind_me', 'rttpg_rated', 'rttpg_activation_redirect', 'rttpg_options', 'woocommerce_enable_ajax_add_to_cart', 'woocommerce_cart_redirect_after_add', 'tpg_flush_rewrite_rules', 'elementor_experiment-e_optimized_assets_loading', 'elementor_experiment-e_optimized_css_loading');
DELETE FROM wp_options WHERE option_name LIKE 'rttpg_dismiss_bf_notice_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_tpg_last_active_tab', 'taxonomy_relation', 'author', 's', 'order', 'order_by', 'tpg_meta_key', '_rt_order', 'dismissed_ramadan_notice', 'dismissed_summer_notice', '_elementor_data', 'rttpg_category_color', '_rttpg_block_css', '_rttpg_block_active', 'posts_per_page', 'pagination', 'posts_loading_type', '_wp_page_template', 'post_filter', 'tgp_filter_taxonomy', 'tgp_filter_taxonomy_hierarchical', 'cf_group', 'cf_hide_empty_value', 'cf_show_only_value', 'cf_hide_group_title', 'tpg_read_more', 'tpg_post_type', '_wp_attachment_image_alt', '_tpg_video_url', 'tgp_default_filter', 'isotope_default_filter', 'tpg_taxonomy', 'date_range_start', 'date_range_end');
DELETE FROM wp_usermeta WHERE meta_key IN ('_tpg_last_active_tab', 'taxonomy_relation', 'author', 's', 'order', 'order_by', 'tpg_meta_key', '_rt_order', 'dismissed_ramadan_notice', 'dismissed_summer_notice', '_elementor_data', 'rttpg_category_color', '_rttpg_block_css', '_rttpg_block_active', 'posts_per_page', 'pagination', 'posts_loading_type', '_wp_page_template', 'post_filter', 'tgp_filter_taxonomy', 'tgp_filter_taxonomy_hierarchical', 'cf_group', 'cf_hide_empty_value', 'cf_show_only_value', 'cf_hide_group_title', 'tpg_read_more', 'tpg_post_type', '_wp_attachment_image_alt', '_tpg_video_url', 'tgp_default_filter', 'isotope_default_filter', 'tpg_taxonomy', 'date_range_start', 'date_range_end');
DELETE FROM wp_termmeta WHERE meta_key IN ('_tpg_last_active_tab', 'taxonomy_relation', 'author', 's', 'order', 'order_by', 'tpg_meta_key', '_rt_order', 'dismissed_ramadan_notice', 'dismissed_summer_notice', '_elementor_data', 'rttpg_category_color', '_rttpg_block_css', '_rttpg_block_active', 'posts_per_page', 'pagination', 'posts_loading_type', '_wp_page_template', 'post_filter', 'tgp_filter_taxonomy', 'tgp_filter_taxonomy_hierarchical', 'cf_group', 'cf_hide_empty_value', 'cf_show_only_value', 'cf_hide_group_title', 'tpg_read_more', 'tpg_post_type', '_wp_attachment_image_alt', '_tpg_video_url', 'tgp_default_filter', 'isotope_default_filter', 'tpg_taxonomy', 'date_range_start', 'date_range_end');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_tpg_last_active_tab', 'taxonomy_relation', 'author', 's', 'order', 'order_by', 'tpg_meta_key', '_rt_order', 'dismissed_ramadan_notice', 'dismissed_summer_notice', '_elementor_data', 'rttpg_category_color', '_rttpg_block_css', '_rttpg_block_active', 'posts_per_page', 'pagination', 'posts_loading_type', '_wp_page_template', 'post_filter', 'tgp_filter_taxonomy', 'tgp_filter_taxonomy_hierarchical', 'cf_group', 'cf_hide_empty_value', 'cf_show_only_value', 'cf_hide_group_title', 'tpg_read_more', 'tpg_post_type', '_wp_attachment_image_alt', '_tpg_video_url', 'tgp_default_filter', 'isotope_default_filter', 'tpg_taxonomy', 'date_range_start', 'date_range_end');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'term_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'term_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'term_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'term_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'term_operator_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'term_operator_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'term_operator_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'term_operator_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_start';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_start';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_start';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_start';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_end';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_end';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_end';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_end';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_color';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_color';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_color';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_color';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_size';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_size';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_size';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_size';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_weight';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_weight';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_weight';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_weight';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_alignment';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_alignment';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_alignment';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_alignment';

