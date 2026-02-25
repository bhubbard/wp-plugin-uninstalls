-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'alg_wc_cart_messages_add_to_cart_section_enabled', 'alg_wc_cart_messages_add_to_cart_custom_enabled', 'alg_wc_cart_messages_add_to_cart_by_url_enabled', 'alg_wc_cart_messages_add_to_cart_custom_text', 'woocommerce_cart_redirect_after_add', 'alg_wc_cart_messages_version');
DELETE FROM wp_options WHERE option_name LIKE '%_section_enabled';
DELETE FROM wp_options WHERE option_name LIKE '%_messages';
DELETE FROM wp_options WHERE option_name LIKE '%_message_total_number';
DELETE FROM wp_options WHERE option_name LIKE '%_message_types';
DELETE FROM wp_options WHERE option_name LIKE '%_message_types_on_empty';
DELETE FROM wp_options WHERE option_name LIKE '%_message_visibilities';
DELETE FROM wp_options WHERE option_name LIKE '%_reset';

