-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('glmall_flash_notices', 'glmall_activation_error', 'glmall_plugin_version', 'glmall_installl_completed', 'glmall_activated');

