-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('recently_activated', 'cincopa_cp_mt_api_token', 'CincopaRss', 'CincopaAsync', 'CincopaExcerpt', 'cincopa_welcome_notice', 'CincopaOpenGraph', 'CincopaTemplates', 'classic-editor-replace', 'cincopaexcerpt', 'cincopa_installed', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cincopa_cp_mt_api_token');
DELETE FROM wp_usermeta WHERE meta_key IN ('cincopa_cp_mt_api_token');
DELETE FROM wp_termmeta WHERE meta_key IN ('cincopa_cp_mt_api_token');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cincopa_cp_mt_api_token');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';

