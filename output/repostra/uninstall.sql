-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('repostra_auto_publish', 'repostra_default_category', 'repostra_default_author', 'repostra_api_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('repostra_post_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('repostra_post_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('repostra_post_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('repostra_post_id');

