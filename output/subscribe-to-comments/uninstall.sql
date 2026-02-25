-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sg_subscribe_settings', 'do_not_mail', 'settings_errors');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sg_subscribe-to-comments', '_sg_subscribe-to-comments-pending', '_sg_subscribe-to-comments-pending-with-email');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sg_subscribe-to-comments', '_sg_subscribe-to-comments-pending', '_sg_subscribe-to-comments-pending-with-email');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sg_subscribe-to-comments', '_sg_subscribe-to-comments-pending', '_sg_subscribe-to-comments-pending-with-email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sg_subscribe-to-comments', '_sg_subscribe-to-comments-pending', '_sg_subscribe-to-comments-pending-with-email');

