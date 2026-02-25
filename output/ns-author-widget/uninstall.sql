-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('nsaw_fb', 'nsaw_twitter', 'nsaw_gp', 'nsaw_yt', 'nsaw_li');
DELETE FROM wp_usermeta WHERE meta_key IN ('nsaw_fb', 'nsaw_twitter', 'nsaw_gp', 'nsaw_yt', 'nsaw_li');
DELETE FROM wp_termmeta WHERE meta_key IN ('nsaw_fb', 'nsaw_twitter', 'nsaw_gp', 'nsaw_yt', 'nsaw_li');
DELETE FROM wp_commentmeta WHERE meta_key IN ('nsaw_fb', 'nsaw_twitter', 'nsaw_gp', 'nsaw_yt', 'nsaw_li');

