-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rewrite_rules', 'bp-docs-slug', 'bp-docs-excerpt-length', 'bp-docs-directory-title', 'bp-docs-user-tab-name', 'bp-docs-tab-name', 'bp-docs-enable-attachments', 'dashboard_widget_options');
DELETE FROM wp_options WHERE option_name LIKE '%_children';
DELETE FROM wp_options WHERE option_name LIKE 'associated_groups-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bp_docs_last_editor', '_bp_docs_last_pinged', '_edit_last', 'bp_docs_count', 'bp_docs_settings', 'bp_docs_revision_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('bp_docs_last_editor', '_bp_docs_last_pinged', '_edit_last', 'bp_docs_count', 'bp_docs_settings', 'bp_docs_revision_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('bp_docs_last_editor', '_bp_docs_last_pinged', '_edit_last', 'bp_docs_count', 'bp_docs_settings', 'bp_docs_revision_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bp_docs_last_editor', '_bp_docs_last_pinged', '_edit_last', 'bp_docs_count', 'bp_docs_settings', 'bp_docs_revision_count');

