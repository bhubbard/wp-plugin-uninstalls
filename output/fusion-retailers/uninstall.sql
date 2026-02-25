-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fusion_retailers_imported', 'fusion_states_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('fusion_states', 'fusion_retailer_website');
DELETE FROM wp_usermeta WHERE meta_key IN ('fusion_states', 'fusion_retailer_website');
DELETE FROM wp_termmeta WHERE meta_key IN ('fusion_states', 'fusion_retailer_website');
DELETE FROM wp_commentmeta WHERE meta_key IN ('fusion_states', 'fusion_retailer_website');

