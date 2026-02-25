-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('title_field', 'description_field', 'key_id_field', 'key_secret_field', 'payment_action_field');

