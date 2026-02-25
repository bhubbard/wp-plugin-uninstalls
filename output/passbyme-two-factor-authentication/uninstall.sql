-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pbm_2fa_management_certificate', 'pbm_2fa_application_certificate', 'pbm_2fa_message_title', 'pbm_2fa_message', 'pbm_2fa_timeout', 'pbm_2fa_mng_url', 'pbm_2fa_auth_url', 'pbm_2fa_proxy_url', 'pbm_2fa_proxy_port', 'pbm_2fa_proxy_pwd', 'pbm_2fa_application_pwd', 'pbm_2fa_management_pwd');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pbm_2fa_authentication', 'pbm_2fa_user_status', 'pbm_2fa_user_oid');
DELETE FROM wp_usermeta WHERE meta_key IN ('pbm_2fa_authentication', 'pbm_2fa_user_status', 'pbm_2fa_user_oid');
DELETE FROM wp_termmeta WHERE meta_key IN ('pbm_2fa_authentication', 'pbm_2fa_user_status', 'pbm_2fa_user_oid');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pbm_2fa_authentication', 'pbm_2fa_user_status', 'pbm_2fa_user_oid');

