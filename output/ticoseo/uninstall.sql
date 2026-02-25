-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('oai_settings_options', 'ticoseo-settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('oai-outline-prompt', 'oai-outline-model', 'oai-outline-temp', 'oai-outline-freq', 'oai-outline-maxtokens', 'oai-status', 'oai-stopped', 'oai-prompt', 'oai-content-prompt', 'oai-content-model', 'oai-content-temp', 'oai-content-freq', 'oai-content-maxtokens', 'oai-idea-prompt', 'oai-idea-model', 'oai-idea-temp', 'oai-idea-freq', 'oai-idea-maxtokens');
DELETE FROM wp_usermeta WHERE meta_key IN ('oai-outline-prompt', 'oai-outline-model', 'oai-outline-temp', 'oai-outline-freq', 'oai-outline-maxtokens', 'oai-status', 'oai-stopped', 'oai-prompt', 'oai-content-prompt', 'oai-content-model', 'oai-content-temp', 'oai-content-freq', 'oai-content-maxtokens', 'oai-idea-prompt', 'oai-idea-model', 'oai-idea-temp', 'oai-idea-freq', 'oai-idea-maxtokens');
DELETE FROM wp_termmeta WHERE meta_key IN ('oai-outline-prompt', 'oai-outline-model', 'oai-outline-temp', 'oai-outline-freq', 'oai-outline-maxtokens', 'oai-status', 'oai-stopped', 'oai-prompt', 'oai-content-prompt', 'oai-content-model', 'oai-content-temp', 'oai-content-freq', 'oai-content-maxtokens', 'oai-idea-prompt', 'oai-idea-model', 'oai-idea-temp', 'oai-idea-freq', 'oai-idea-maxtokens');
DELETE FROM wp_commentmeta WHERE meta_key IN ('oai-outline-prompt', 'oai-outline-model', 'oai-outline-temp', 'oai-outline-freq', 'oai-outline-maxtokens', 'oai-status', 'oai-stopped', 'oai-prompt', 'oai-content-prompt', 'oai-content-model', 'oai-content-temp', 'oai-content-freq', 'oai-content-maxtokens', 'oai-idea-prompt', 'oai-idea-model', 'oai-idea-temp', 'oai-idea-freq', 'oai-idea-maxtokens');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-outlines';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-outlines';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-outlines';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-outlines';

