-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sdxrpc_disable_enabled', 'sdxrpc_activation_redirect');

