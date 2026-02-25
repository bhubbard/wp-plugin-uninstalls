-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nmg_comment_pub');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('comment_pub');
DELETE FROM wp_usermeta WHERE meta_key IN ('comment_pub');
DELETE FROM wp_termmeta WHERE meta_key IN ('comment_pub');
DELETE FROM wp_commentmeta WHERE meta_key IN ('comment_pub');

