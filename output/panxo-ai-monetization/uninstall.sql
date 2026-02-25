-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('panxo_publisher_id', 'panxo_enabled', 'panxo_script_position', 'panxo_do_auto_register', 'panxo_setup_status', 'panxo_property_id', 'panxo_setup_error', 'panxo_user_id', 'panxo_registered_at', 'panxo_setup_token', 'panxo_script_hash', 'panxo_format_active', 'panxo_format_activated_at');

