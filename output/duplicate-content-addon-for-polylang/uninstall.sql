-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dupcap-installDate', 'dupcap_initial_save_version', 'dupcap-atp-notice', 'cpel_autopoly_installed', 'active_sitewide_plugins', 'dupcap-v', 'dupcap-type', 'dupcap-ratingDiv');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_edit_mode', 'pll_duplicate_content', '_wp_attachment_metadata', '_wp_attached_file', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_edit_mode', 'pll_duplicate_content', '_wp_attachment_metadata', '_wp_attached_file', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_edit_mode', 'pll_duplicate_content', '_wp_attachment_metadata', '_wp_attached_file', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_edit_mode', 'pll_duplicate_content', '_wp_attachment_metadata', '_wp_attached_file', '_wp_attachment_image_alt');

