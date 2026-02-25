-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('prro_version', 'prro_reactivate_action', 'prro_cart_notice', 'prro_create_order_note', 'prro_show_repeat_order_on_order_list', 'prro_show_user_reorder_list', 'prro_show_reorder_in_email');
DELETE FROM wp_options WHERE option_name LIKE 'prro_order_status_%';

