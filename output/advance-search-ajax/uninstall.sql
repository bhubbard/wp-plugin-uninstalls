-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('title', 'e_date', 'e_keyword', 'e_author', 'e_tag', 'e_cats', 'loadin_img', 's_posts_per_page');

