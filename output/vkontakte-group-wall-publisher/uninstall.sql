-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('skylark_vk_application_id', 'skylark_vk_group_id', 'skylark_vk_autopost_on_publish', 'skylark_vk_use_excerpt_text', 'skylark_vk_use_excerpt_length', 'skylark_vk_admin_email', 'skylark_vk_admin_password', 'skylark_vk_use_bot', 'skylark_vk_phone_num');

