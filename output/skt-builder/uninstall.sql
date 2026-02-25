-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sktbuilder_version', 'sktbuilder_libraries', 'sktbuilder_page_templates', 'sktbuilder_libs', 'sktbuilder_action');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sktbuilder_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('sktbuilder_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('sktbuilder_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sktbuilder_data');

