-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fresre_settings', 'fresre_stale_posts_cache');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_fresre_reviewed', '_fresre_pined');
DELETE FROM wp_usermeta WHERE meta_key IN ('_fresre_reviewed', '_fresre_pined');
DELETE FROM wp_termmeta WHERE meta_key IN ('_fresre_reviewed', '_fresre_pined');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_fresre_reviewed', '_fresre_pined');

