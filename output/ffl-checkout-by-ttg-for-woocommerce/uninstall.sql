-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('FFLCheckoutByTTG_enable_sot_license_upload', 'FFLCheckoutByTTG_API_KEY', 'FFLCheckoutByTTG_initial_map_latitude', 'FFLCheckoutByTTG_initial_map_longitude', 'FFLCheckoutByTTG_initial_map_zoom', 'ttg_ffl_checkout_block_location', 'FFLCheckoutByTTG_checkout_title_for_ffl_items', 'FFLCheckoutByTTG_checkout_title_for_nfa_items', 'FFLCheckoutByTTG_checkout_message_for_ffl_map', 'FFLCheckoutByTTG_checkout_message_for_ffl_license', 'FFLCheckoutByTTG_enable_interactive_map', 'FFLCheckoutByTTG_enable_unverified_ffls', 'FFLCheckoutByTTG_enable_file_upload', 'FFLCheckoutByTTG_enable_skip_ffl_proccess', 'woocommerce_ship_to_destination');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ttg_ffl_requires_checkout', 'ttg_ffl_requires_sot_license');
DELETE FROM wp_usermeta WHERE meta_key IN ('ttg_ffl_requires_checkout', 'ttg_ffl_requires_sot_license');
DELETE FROM wp_termmeta WHERE meta_key IN ('ttg_ffl_requires_checkout', 'ttg_ffl_requires_sot_license');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ttg_ffl_requires_checkout', 'ttg_ffl_requires_sot_license');

