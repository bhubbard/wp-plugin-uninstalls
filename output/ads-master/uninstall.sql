-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ads_exclude_ids', 'ads_main_enable', 'ads_post_top_enable', 'ads_post_top_desc', 'ads_post_top_corner_enable', 'ads_post_top_corner_desc', 'ads_post_first_p_enable', 'ads_post_first_p_desc', 'ads_post_bottom_enable', 'ads_post_bottom_desc', 'ads_page_top_enable', 'ads_page_top_desc', 'ads_page_bottom_enable', 'ads_page_bottom_desc', 'ads_shortcode_enable', 'ads_shortcode_desc');

