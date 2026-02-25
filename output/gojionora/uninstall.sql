-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gojion_default_variant', 'gojion_default_position', 'gojion_texts');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_gojion_variant', '_gojion_ad', '_gojion_position', '_gojion_applied_at', '_gld_ad', '_gojion_reco_vendor');
DELETE FROM wp_usermeta WHERE meta_key IN ('_gojion_variant', '_gojion_ad', '_gojion_position', '_gojion_applied_at', '_gld_ad', '_gojion_reco_vendor');
DELETE FROM wp_termmeta WHERE meta_key IN ('_gojion_variant', '_gojion_ad', '_gojion_position', '_gojion_applied_at', '_gld_ad', '_gojion_reco_vendor');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_gojion_variant', '_gojion_ad', '_gojion_position', '_gojion_applied_at', '_gld_ad', '_gojion_reco_vendor');

