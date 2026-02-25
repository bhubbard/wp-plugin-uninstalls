-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('translatecart_hide_selector_single', 'translatecart_setup_complete', 'translatecart_show_wizard', 'translatecart_custom_fields', 'translatecart_validation_messages', 'translatecart_version', 'translatecart_pro_url');

