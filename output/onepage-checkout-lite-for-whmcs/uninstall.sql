-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_onepchli_page_id', '_onepchli_selected_template', 'csf_demo_mode', 'one-page-whmcs-admin-page');

