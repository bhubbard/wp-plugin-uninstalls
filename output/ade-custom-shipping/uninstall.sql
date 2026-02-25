-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ade_state_spliting', 'ade_custom_ng', 'ade_custom_gh', 'ade_custom_time', 'ade_state_reference', 'ade_custom_shipping_general');

