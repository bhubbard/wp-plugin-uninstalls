-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('synved_social_settings', 'smf-hide-review', 'synved_connect_install_date', 'synved_version', 'synved_option_wp_upgrade_addon_transfer', 'synved_option_wp_upgrade_addon_transfer_time', 'synved_connect_id_default', 'widget_synved_social_share', 'widget_synved_social_follow');
DELETE FROM wp_options WHERE option_name LIKE 'synved_connect_id_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('synved_social_exclude', 'synved_social_exclude_share', 'synved_social_exclude_follow');
DELETE FROM wp_usermeta WHERE meta_key IN ('synved_social_exclude', 'synved_social_exclude_share', 'synved_social_exclude_follow');
DELETE FROM wp_termmeta WHERE meta_key IN ('synved_social_exclude', 'synved_social_exclude_share', 'synved_social_exclude_follow');
DELETE FROM wp_commentmeta WHERE meta_key IN ('synved_social_exclude', 'synved_social_exclude_share', 'synved_social_exclude_follow');

