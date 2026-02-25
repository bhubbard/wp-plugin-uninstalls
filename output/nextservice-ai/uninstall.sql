-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nextservice_ai_embed_type');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_nextservice_ai_branch');
DELETE FROM wp_usermeta WHERE meta_key IN ('_nextservice_ai_branch');
DELETE FROM wp_termmeta WHERE meta_key IN ('_nextservice_ai_branch');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_nextservice_ai_branch');

