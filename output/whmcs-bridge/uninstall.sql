-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cc_whmcs_bridge_version', 'cc_whmcs_bridge_footer', 'cc_whmcs_bridge_sso_cache', 'cc_whmcs_bridge_url', 'cc_whmcs_bridge_pages', 'cc_whmcs_bridge_log', 'cc_whmcs_bridge_page', 'cc_whmcs_bridge_ftp_user', 'cc_whmcs_bridge_ftp_password', 'cc-ce-bridge-cp-support-us', 'cc_whmcs_bridge_template', 'cc_whmcs_bridge_css', 'cc_whmcs_bridge_sso_js', 'cc_whmcs_bridge_jquery', 'cc_whmcs_bridge_debug', 'cc_whmcs_bridge_sso_active', 'cc_whmcs_bridge_sso_local_key', 'cc_whmcs_bridge_prefix', 'cc_whmcs_bridge_sso_force_ssl', 'cc_whmcs_bridge_sso_titles', 'cc_whmcs_bridge_permalinks', 'cc_whmcs_bridge_custom_rules', 'cc_whmcs_bridge_invoicestyle', 'cc_whmcs_bridge_style', 'cc_whmcs_bridge_affiliate_id', 'cc_whmcs_bridge_sso_license_key');
DELETE FROM wp_options WHERE option_name LIKE 'cc_whmcs_bridge_cache%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cc_whmcs_bridge_page');
DELETE FROM wp_usermeta WHERE meta_key IN ('cc_whmcs_bridge_page');
DELETE FROM wp_termmeta WHERE meta_key IN ('cc_whmcs_bridge_page');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cc_whmcs_bridge_page');

