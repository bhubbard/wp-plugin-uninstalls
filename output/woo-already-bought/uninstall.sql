-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('already_bought_enable_option', 'already_bought_enable_piaic', 'already_bought_enable_pwb', 'already_bought_add_to_cart_custom_msg', 'already_bought_custom_msg_pwb', 'already_bought_custom_msg_piaic');

