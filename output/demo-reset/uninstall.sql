-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('demo_reset_options', 'demo_reset_settings', 'demo_reset_runners', 'demo_reset_reset_history', 'demo_reset_info_bar', 'demo_reset_last_triggers', 'demo_reset_active_plugins', 'rewrite_rules', 'demo_reset_last_session_tokens', '_site_transient_update_plugins', '_site_transient_update_themes', '_site_transient_update_core', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('session_tokens');
DELETE FROM wp_usermeta WHERE meta_key IN ('session_tokens');
DELETE FROM wp_termmeta WHERE meta_key IN ('session_tokens');
DELETE FROM wp_commentmeta WHERE meta_key IN ('session_tokens');

