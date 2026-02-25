-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('points-comments_enable', 'points-comments', 'points-welcome', 'points-points_label', 'points-points_singular_label', 'points-points_status');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('nickname');
DELETE FROM wp_usermeta WHERE meta_key IN ('nickname');
DELETE FROM wp_termmeta WHERE meta_key IN ('nickname');
DELETE FROM wp_commentmeta WHERE meta_key IN ('nickname');

