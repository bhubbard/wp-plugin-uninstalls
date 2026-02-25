-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cat', 'background_color', 'add_to_cart_1_color', 'add_to_cart_2_color', 'view_1_color', 'view_2_color', 'product_title_color', 'font_color', 'num_prod', 'title_size', 'option_etc');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wct_position', 'wct_facebook', 'wct_twitter', 'wct_linkedin', 'wct_instagram');
DELETE FROM wp_usermeta WHERE meta_key IN ('wct_position', 'wct_facebook', 'wct_twitter', 'wct_linkedin', 'wct_instagram');
DELETE FROM wp_termmeta WHERE meta_key IN ('wct_position', 'wct_facebook', 'wct_twitter', 'wct_linkedin', 'wct_instagram');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wct_position', 'wct_facebook', 'wct_twitter', 'wct_linkedin', 'wct_instagram');

