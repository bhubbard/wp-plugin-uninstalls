-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ptu_disable_acf_post_types', 'ptu_flush_rewrite_rules');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ptu_supports', '_ptu_publicly_queryable');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ptu_supports', '_ptu_publicly_queryable');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ptu_supports', '_ptu_publicly_queryable');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ptu_supports', '_ptu_publicly_queryable');

