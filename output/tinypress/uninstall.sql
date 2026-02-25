-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tinypress_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tiny_slug', 'target_url', 'source_post_id', 'source_post_type', 'redirection', 'notes');
DELETE FROM wp_usermeta WHERE meta_key IN ('tiny_slug', 'target_url', 'source_post_id', 'source_post_type', 'redirection', 'notes');
DELETE FROM wp_termmeta WHERE meta_key IN ('tiny_slug', 'target_url', 'source_post_id', 'source_post_type', 'redirection', 'notes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tiny_slug', 'target_url', 'source_post_id', 'source_post_type', 'redirection', 'notes');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_pb_settings_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_pb_settings_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_pb_settings_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_pb_settings_errors_%';

