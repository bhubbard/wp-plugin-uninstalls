-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pallet', 'en_trial_activation_pallet', 'subscription_packages_response_for_pallet', 'en_pallet_packaging_options_plans', 'suspend_automatic_detection_of_pallets', 'en_pallet_packaging_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_en_sao_pallet', '_en_vrf_pallet', '_en_sam_pallet');
DELETE FROM wp_usermeta WHERE meta_key IN ('_en_sao_pallet', '_en_vrf_pallet', '_en_sam_pallet');
DELETE FROM wp_termmeta WHERE meta_key IN ('_en_sao_pallet', '_en_vrf_pallet', '_en_sam_pallet');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_en_sao_pallet', '_en_vrf_pallet', '_en_sam_pallet');

