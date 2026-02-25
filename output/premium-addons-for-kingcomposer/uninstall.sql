-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('octagon_icon_set', 'octagon_custom_sidebar');
DELETE FROM wp_options WHERE option_name LIKE '%-has-cached';
DELETE FROM wp_options WHERE option_name LIKE 'taxonomy_options%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('featured_post');
DELETE FROM wp_usermeta WHERE meta_key IN ('featured_post');
DELETE FROM wp_termmeta WHERE meta_key IN ('featured_post');
DELETE FROM wp_commentmeta WHERE meta_key IN ('featured_post');

