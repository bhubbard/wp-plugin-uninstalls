-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cga_enabled_post_types', 'cga_default_guest_author', 'cga_join_style', 'cga_apply_on', 'cga_cache_ttl', 'cga_suppress_schema', 'cga_cache_version');
DELETE FROM wp_options WHERE option_name LIKE 'cga_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('guest-author');
DELETE FROM wp_usermeta WHERE meta_key IN ('guest-author');
DELETE FROM wp_termmeta WHERE meta_key IN ('guest-author');
DELETE FROM wp_commentmeta WHERE meta_key IN ('guest-author');

