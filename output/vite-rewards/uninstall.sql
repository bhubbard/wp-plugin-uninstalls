-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'health-check-allowed-plugins', '_vt_ac', 'rwd_addons', 'apps_bd_ups');
DELETE FROM wp_options WHERE option_name LIKE 'apbd_prov_%';
DELETE FROM wp_options WHERE option_name LIKE '%_addons';
DELETE FROM wp_options WHERE option_name LIKE '%_installed';
DELETE FROM wp_options WHERE option_name LIKE 'aprp_ru%';
DELETE FROM wp_options WHERE option_name LIKE 'dismissed_notice_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name', 'billing_phone', 'apbd_reward_out', 'apbd_reward_in', 'apbd_reward_crnt_bg');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name', 'billing_phone', 'apbd_reward_out', 'apbd_reward_in', 'apbd_reward_crnt_bg');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name', 'billing_phone', 'apbd_reward_out', 'apbd_reward_in', 'apbd_reward_crnt_bg');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name', 'billing_phone', 'apbd_reward_out', 'apbd_reward_in', 'apbd_reward_crnt_bg');

