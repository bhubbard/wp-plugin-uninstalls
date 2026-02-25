-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wm_servers', 'wm_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wmc_commands', 'player_id', 'minecraft_woo');
DELETE FROM wp_usermeta WHERE meta_key IN ('wmc_commands', 'player_id', 'minecraft_woo');
DELETE FROM wp_termmeta WHERE meta_key IN ('wmc_commands', 'player_id', 'minecraft_woo');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wmc_commands', 'player_id', 'minecraft_woo');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_wmc_commands_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_wmc_commands_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_wmc_commands_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wmc_commands_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_wmc_delivered_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_wmc_delivered_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_wmc_delivered_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wmc_delivered_%';

