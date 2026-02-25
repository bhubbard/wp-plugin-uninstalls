-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('atomica_vision_auth_token', 'atomica_vision_try_on_button_text', 'atomica_vision_try_on_close_button_text', 'atomica_vision_try_on_button_position', 'atomica_vision_try_on_auto_start');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('atomica_vision_product_color');
DELETE FROM wp_usermeta WHERE meta_key IN ('atomica_vision_product_color');
DELETE FROM wp_termmeta WHERE meta_key IN ('atomica_vision_product_color');
DELETE FROM wp_commentmeta WHERE meta_key IN ('atomica_vision_product_color');

