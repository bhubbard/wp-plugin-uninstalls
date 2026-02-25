-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('azh-fb-settings', 'azm-fb-pages', 'azm-fb-verify-token', 'azm-fb-access-token');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_fb_receivers', '_fb_sent', '_fb_clicks', '_rule');
DELETE FROM wp_usermeta WHERE meta_key IN ('_fb_receivers', '_fb_sent', '_fb_clicks', '_rule');
DELETE FROM wp_termmeta WHERE meta_key IN ('_fb_receivers', '_fb_sent', '_fb_clicks', '_rule');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_fb_receivers', '_fb_sent', '_fb_clicks', '_rule');

