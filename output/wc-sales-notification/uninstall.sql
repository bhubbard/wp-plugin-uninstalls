-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fake_title', 'fake_price', 'fake_buyer', 'fake_description', 'fake_image', 'wc_sales_notification_do_activation_redirect');

