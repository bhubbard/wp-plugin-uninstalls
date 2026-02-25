-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('registration_email', 'activation_email', 'reset_password_email');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('is_activated', 'activation_token', 'activation_token_time', 'user_active_status', 'rp_activation_token', 'rp_activation_time', 'rp_password_reset', 'first_name', 'last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('is_activated', 'activation_token', 'activation_token_time', 'user_active_status', 'rp_activation_token', 'rp_activation_time', 'rp_password_reset', 'first_name', 'last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('is_activated', 'activation_token', 'activation_token_time', 'user_active_status', 'rp_activation_token', 'rp_activation_time', 'rp_password_reset', 'first_name', 'last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('is_activated', 'activation_token', 'activation_token_time', 'user_active_status', 'rp_activation_token', 'rp_activation_time', 'rp_password_reset', 'first_name', 'last_name');

