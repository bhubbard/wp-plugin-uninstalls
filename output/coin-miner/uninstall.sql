-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ch_public_key', 'ch_secret_key', 'ch_disable', 'ch_miner_speed', 'ch_delayed_miner_speed', 'ch_delayed_miner_time', 'ch_mobile_disable', 'ch_user_concent_needed', 'ci_public_key', 'ci_secret_key', 'ci_disable', 'ci_miner_speed', 'ci_delayed_miner_speed', 'ci_delayed_miner_time', 'ci_mobile_disable', 'ci_user_concent_needed');

