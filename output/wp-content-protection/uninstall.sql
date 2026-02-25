-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcp_post_type_settings', 'wpcp_content_protection_msg', 'wpcp_wrongpass_msg');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpcp_isprotection_userroles', 'wpcp_isprotection_loggedin', 'wpcp_isprotection_password', 'wpcp_isprotection_passvalue', 'post_content');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpcp_isprotection_userroles', 'wpcp_isprotection_loggedin', 'wpcp_isprotection_password', 'wpcp_isprotection_passvalue', 'post_content');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpcp_isprotection_userroles', 'wpcp_isprotection_loggedin', 'wpcp_isprotection_password', 'wpcp_isprotection_passvalue', 'post_content');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpcp_isprotection_userroles', 'wpcp_isprotection_loggedin', 'wpcp_isprotection_password', 'wpcp_isprotection_passvalue', 'post_content');

