-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aegilock_tg_version', 'aegilock_wizard_completed', 'aegilock_wc_settings', 'aegilock_block_high_risk', 'aegilock_hold_medium_risk', 'aegilock_enabled', 'aegilock_activated_version', 'aegilock_activation_time', 'aegilock_tg_active', 'aegilock_tg_activated_at', 'aegilock_tg_db_ready', 'aegilock_tg_db_version', 'update_plugins', 'aegilock_tg_db_error', 'aegilock_return_stats', 'aegilock_wizard_error');

