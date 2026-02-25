-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pages_setting', 'ccgquickly_media', 'ccgquickly_addmedia', 'ccgquickly_settings', 'ccgquickly_post', 'ccgquickly_addpost', 'ccgquickly_tools', 'ccgquickly_users');

