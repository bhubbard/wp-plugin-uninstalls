-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pobt_enabled', 'pobt_enabled_at', 'pobt_bypass_key', 'pobt_retry_after', 'pobt_allow_bots', 'pobt_bypass_enabled', 'surge_installed');

