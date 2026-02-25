-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_bigin_auth_infos', 'store_all_token_data', 'store_refresh_token_data', 'w3sc_bigin_installed', 'w3sc_bigin_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('w3sc-cf7-bigin_cf7_form', '_wp_page_template', 'integration_enable_disable', 'w3sc_bigin_fields_repeat_group', 'w3sc-cf7-bigin_module');
DELETE FROM wp_usermeta WHERE meta_key IN ('w3sc-cf7-bigin_cf7_form', '_wp_page_template', 'integration_enable_disable', 'w3sc_bigin_fields_repeat_group', 'w3sc-cf7-bigin_module');
DELETE FROM wp_termmeta WHERE meta_key IN ('w3sc-cf7-bigin_cf7_form', '_wp_page_template', 'integration_enable_disable', 'w3sc_bigin_fields_repeat_group', 'w3sc-cf7-bigin_module');
DELETE FROM wp_commentmeta WHERE meta_key IN ('w3sc-cf7-bigin_cf7_form', '_wp_page_template', 'integration_enable_disable', 'w3sc_bigin_fields_repeat_group', 'w3sc-cf7-bigin_module');

