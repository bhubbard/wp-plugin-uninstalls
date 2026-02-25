-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ns_shield_hsts', 'ns_shield_security_headers', 'ns_shield_app_passwords', 'ns_shield_default_admin', 'ns_shield_new_admin_login', 'ns_shield_admin_login_change_pending', 'ns_shield_directory_indexing', 'ns_shield_file_editor', 'ns_shield_wp_api_json', 'ns_shield_xml_rpc', 'ns_shield_login_url_enabled', 'ns_shield_w3tc_flushed', 'ns_shield_login_url', 'ns_shield_debug', 'ns_shield_csp_header_light', 'ns_shield_csp_header_hard');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ns_shield_promo_banner_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('ns_shield_promo_banner_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('ns_shield_promo_banner_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ns_shield_promo_banner_dismissed');

