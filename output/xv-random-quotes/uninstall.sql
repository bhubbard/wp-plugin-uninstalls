-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xv_quotes_default_category_id', 'xv_migration_pending', 'xv_quotes_migrated_v2', 'xv_migration_total', 'xv_quotes_widgets_migrated', 'widget_xv_random_quotes_widget', '_xv_quotes_migrated', 'xv_quotes_needs_migration', 'stray_quotes_options', 'xv_quotes_flush_rewrite_rules', 'xv_migration_error', 'xv_migration_success', 'xv_migration_progress', 'xv_migration_total', 'xv_migration_offset');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_quote_source', 'author_url', '_quote_legacy_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_quote_source', 'author_url', '_quote_legacy_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_quote_source', 'author_url', '_quote_legacy_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_quote_source', 'author_url', '_quote_legacy_id');

