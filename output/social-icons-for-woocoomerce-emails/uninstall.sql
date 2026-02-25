-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('siwce_text_before_icons', 'siwce_img_width', 'woocommerce_email_base_color');
DELETE FROM wp_options WHERE option_name LIKE 'siwce_url_%';

