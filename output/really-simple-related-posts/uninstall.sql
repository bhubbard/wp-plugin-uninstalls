-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rja_related_posts_category_tag');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rsrp_disable_related_posts');
DELETE FROM wp_usermeta WHERE meta_key IN ('rsrp_disable_related_posts');
DELETE FROM wp_termmeta WHERE meta_key IN ('rsrp_disable_related_posts');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rsrp_disable_related_posts');

