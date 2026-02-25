-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('krbl_notify_email', 'krbl_enabled_post_types');

