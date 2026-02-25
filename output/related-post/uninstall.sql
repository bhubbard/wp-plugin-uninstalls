-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('related_post_settings', 'related_post_info');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('related_post_ids', 'related_post_enable');
DELETE FROM wp_usermeta WHERE meta_key IN ('related_post_ids', 'related_post_enable');
DELETE FROM wp_termmeta WHERE meta_key IN ('related_post_ids', 'related_post_enable');
DELETE FROM wp_commentmeta WHERE meta_key IN ('related_post_ids', 'related_post_enable');

