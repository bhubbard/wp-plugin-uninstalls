-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('typerocket_registered', '_typerocket_site_state_changed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('use_builder', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('use_builder', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('use_builder', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('use_builder', '_wp_page_template');

