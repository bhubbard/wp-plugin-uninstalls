-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pcpl_welcome', 'pcpl_follow_config', 'pcpl_follow_enabled', 'pcpl_activation_redirect_transient');

