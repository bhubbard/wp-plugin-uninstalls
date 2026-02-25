-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qubely_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_qubely_css', '__qubely_available_blocks', '__qubely_global_settings', '_qubely_interaction_json', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_qubely_css', '__qubely_available_blocks', '__qubely_global_settings', '_qubely_interaction_json', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_qubely_css', '__qubely_available_blocks', '__qubely_global_settings', '_qubely_interaction_json', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_qubely_css', '__qubely_available_blocks', '__qubely_global_settings', '_qubely_interaction_json', '_wp_page_template');

