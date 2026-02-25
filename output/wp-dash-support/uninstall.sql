-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_wpds_deferred_admin_notice', '_wpds_dev_email', '_wpds_hide', '_wpds_message', 'active_sitewide_plugins');

