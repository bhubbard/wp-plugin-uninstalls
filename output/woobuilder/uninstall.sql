-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pootlepb-template-product');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('woobuilder', 'woobuilder_used_builder', 'panels_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('woobuilder', 'woobuilder_used_builder', 'panels_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('woobuilder', 'woobuilder_used_builder', 'panels_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('woobuilder', 'woobuilder_used_builder', 'panels_data');

