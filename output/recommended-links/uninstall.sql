-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('reclinks_plugin_options', 'rewrite_rules', 'reclinks_plugin_settings', 'reclinks_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_vote_score', '_href', '_author_karma');
DELETE FROM wp_usermeta WHERE meta_key IN ('_vote_score', '_href', '_author_karma');
DELETE FROM wp_termmeta WHERE meta_key IN ('_vote_score', '_href', '_author_karma');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_vote_score', '_href', '_author_karma');

