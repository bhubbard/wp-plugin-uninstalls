-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('posts_per_page_of_tax_category', 'posts_per_page_of_tax_post_tag');
DELETE FROM wp_options WHERE option_name LIKE 'posts_per_page_of_cpt_%';
DELETE FROM wp_options WHERE option_name LIKE 'posts_per_page_of_tax_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dismissed_wp_pointers');
DELETE FROM wp_usermeta WHERE meta_key IN ('dismissed_wp_pointers');
DELETE FROM wp_termmeta WHERE meta_key IN ('dismissed_wp_pointers');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dismissed_wp_pointers');

