-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('notifyodoo_url', 'notifyodoo_notify_about_new_customer', 'notifyodoo_notify_about_new_order', 'notifyodoo_add_tracking_image', 'notifyodoo_allow_ip_address', 'notifyodoo_last_access_ip_address');

