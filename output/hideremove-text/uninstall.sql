-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hide_text_regex', 'hide_text_email', 'hide_text_url', 'hide_text_replace_text', 'hide_text_admin_hidden', 'hide_text_phone_number', 'promo_hunt_title', 'promo_hunt_message', 'promo_image');

