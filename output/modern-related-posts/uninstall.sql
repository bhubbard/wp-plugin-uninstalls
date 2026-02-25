-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('whp_modern_related_posts');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mrp_related_posts');
DELETE FROM wp_usermeta WHERE meta_key IN ('mrp_related_posts');
DELETE FROM wp_termmeta WHERE meta_key IN ('mrp_related_posts');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mrp_related_posts');

