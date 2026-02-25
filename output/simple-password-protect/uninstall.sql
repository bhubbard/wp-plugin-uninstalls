-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('spwdprot_password_hash', 'spwdprot_plugin_enabled', 'spwdprot_impressum_page', 'spwdprot_privacy_page', 'spwdprot_logo_url', 'spwdprot_logo_shape', 'spwdprot_page_title', 'spwdprot_login_text', 'spwdprot_background_color', 'spwdprot_button_color', 'spwdprot_button_text_color', 'spwdprot_link_color', 'spwdprot_show_admin_login', 'spwdprot_show_legal_links', 'spwdprot_password_updated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('spwdprot_last_login');
DELETE FROM wp_usermeta WHERE meta_key IN ('spwdprot_last_login');
DELETE FROM wp_termmeta WHERE meta_key IN ('spwdprot_last_login');
DELETE FROM wp_commentmeta WHERE meta_key IN ('spwdprot_last_login');

