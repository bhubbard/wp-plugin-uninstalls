-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_xprs_rewrite', 'wp_xprs_home_vbid');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_xprs_vbid', 'wp_xprs_mode', 'wp_xprs_sidebar', 'wp_xprs_comments');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_xprs_vbid', 'wp_xprs_mode', 'wp_xprs_sidebar', 'wp_xprs_comments');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_xprs_vbid', 'wp_xprs_mode', 'wp_xprs_sidebar', 'wp_xprs_comments');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_xprs_vbid', 'wp_xprs_mode', 'wp_xprs_sidebar', 'wp_xprs_comments');

