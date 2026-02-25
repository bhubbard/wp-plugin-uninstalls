-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tc_post_format', 'tc_post_encoding', 'tc_comment_format', 'tc_comment_encoding');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_tc_post_format', '_tc_post_encoding');
DELETE FROM wp_usermeta WHERE meta_key IN ('_tc_post_format', '_tc_post_encoding');
DELETE FROM wp_termmeta WHERE meta_key IN ('_tc_post_format', '_tc_post_encoding');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_tc_post_format', '_tc_post_encoding');

