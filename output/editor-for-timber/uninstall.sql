-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('timber-editor_general_supported-post-types', 'timber-editor_codemirror_theme');

