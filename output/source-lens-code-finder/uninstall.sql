-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('slcf_settings', 'ad_inserter', 'slcf_recent_searches', 'rewrite_rules', 'slcf_version', 'slcf_file_hash');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_template_type', 'brizy-post-editor-data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_template_type', 'brizy-post-editor-data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_template_type', 'brizy-post-editor-data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_template_type', 'brizy-post-editor-data');

