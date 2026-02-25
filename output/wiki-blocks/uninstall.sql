-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wilcoskywb_wiki_blocks_merge_permissions', 'wilcoskywb_wiki_blocks_browse_permissions', 'wilcoskywb_wiki_blocks_suggest_permissions', 'wilcoskywb_wiki_blocks_require_login_browse', 'wilcoskywb_wiki_blocks_cleanup_on_uninstall', 'wilcoskywb_wiki_blocks_activity_retention_days', 'wilcoskywb_wiki_blocks_max_versions_per_block', 'wilcoskywb_wiki_blocks_cleanup_on_delete', 'wilcoskywb_wiki_blocks_db_version');
DELETE FROM wp_options WHERE option_name LIKE 'wilcoskywb_backend_edit_%';

