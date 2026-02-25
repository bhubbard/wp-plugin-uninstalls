-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bcSOFF_offline_redirect', 'bcSOFF_site_offline', 'bcSOFF_offline_analytics', 'bcSOFF_offline_header', 'bcSOFF_offline_redirect_url', 'bcSOFF_offline_ip_exempt', 'bcSOFF_offline_background_image', 'bcSOFF_offline_logo', 'bcSOFF_offline_message', 'bcSOFF_offline_theme', 'bcSOFF_offline_css', 'bcSOFF_offline_label', 'bcSOFF_share_data', 'bcSOFF_token', 'bcSOFF_apistring', 'bcSOFF_ask_account_update');
DELETE FROM wp_options WHERE option_name LIKE 'bcSOFF_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ssso_post_override');
DELETE FROM wp_usermeta WHERE meta_key IN ('ssso_post_override');
DELETE FROM wp_termmeta WHERE meta_key IN ('ssso_post_override');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ssso_post_override');

