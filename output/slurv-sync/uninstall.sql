-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('slurv_partner_token', 'slurv_partner_custom_sidebar_bg', 'slurv_partner_custom_link_color', 'slurv_partner_custom_logo', 'slurv_disable_new_user_imports', 'slurv_subdomain');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('slurv_login_token');
DELETE FROM wp_usermeta WHERE meta_key IN ('slurv_login_token');
DELETE FROM wp_termmeta WHERE meta_key IN ('slurv_login_token');
DELETE FROM wp_commentmeta WHERE meta_key IN ('slurv_login_token');

