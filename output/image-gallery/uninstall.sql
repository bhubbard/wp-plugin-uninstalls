-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('imagepress');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ax_post_views', 'post_views_count', 'ip_upload_limit');
DELETE FROM wp_usermeta WHERE meta_key IN ('ax_post_views', 'post_views_count', 'ip_upload_limit');
DELETE FROM wp_termmeta WHERE meta_key IN ('ax_post_views', 'post_views_count', 'ip_upload_limit');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ax_post_views', 'post_views_count', 'ip_upload_limit');

