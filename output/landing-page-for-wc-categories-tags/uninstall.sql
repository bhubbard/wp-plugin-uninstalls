-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_landing_page_for_category_tag_option');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wc_lp_categories_top_description', 'wc_lp_categories_bottom_description', 'wc_lp_tags_top_description', 'wc_lp_tags_bottom_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('wc_lp_categories_top_description', 'wc_lp_categories_bottom_description', 'wc_lp_tags_top_description', 'wc_lp_tags_bottom_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('wc_lp_categories_top_description', 'wc_lp_categories_bottom_description', 'wc_lp_tags_top_description', 'wc_lp_tags_bottom_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wc_lp_categories_top_description', 'wc_lp_categories_bottom_description', 'wc_lp_tags_top_description', 'wc_lp_tags_bottom_description');

