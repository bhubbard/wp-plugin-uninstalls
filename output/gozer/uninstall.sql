-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gozer_settings', 'gozer_bypass_tokens', 'gozer_activation_notice');

