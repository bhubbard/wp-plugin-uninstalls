-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('growify_api_key', 'growify_enable_admin_tracking', 'growify_api_version', 'growify_ai_activation_redirect');

