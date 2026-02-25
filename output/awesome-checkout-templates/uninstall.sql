-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wacout_template_enable', 'wacout_select_template', 'wacout_one_page_checkout');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wacout_fields_req', '_wacout_template_layout_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wacout_fields_req', '_wacout_template_layout_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wacout_fields_req', '_wacout_template_layout_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wacout_fields_req', '_wacout_template_layout_settings');

