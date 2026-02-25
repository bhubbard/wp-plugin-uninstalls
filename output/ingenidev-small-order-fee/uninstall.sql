-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ingenidev_sof_minimum_order_amount', 'ingenidev_sof_small_order_fee', 'ingenidev_sof_welcome_displayed');

