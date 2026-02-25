-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%any';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('components_overview_posts_per_page');
DELETE FROM wp_usermeta WHERE meta_key IN ('components_overview_posts_per_page');
DELETE FROM wp_termmeta WHERE meta_key IN ('components_overview_posts_per_page');
DELETE FROM wp_commentmeta WHERE meta_key IN ('components_overview_posts_per_page');

