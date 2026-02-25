-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nstla_setting_redirectgravatar_all', 'nstla_setting_localavatar_default', 'nstla_setting_localavatar_default_custom_url');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('nstla_setting_localavatar', 'nstla_setting_avatarurl', 'nstab_setting_localavatar', 'nstab_setting_avatarurl');
DELETE FROM wp_usermeta WHERE meta_key IN ('nstla_setting_localavatar', 'nstla_setting_avatarurl', 'nstab_setting_localavatar', 'nstab_setting_avatarurl');
DELETE FROM wp_termmeta WHERE meta_key IN ('nstla_setting_localavatar', 'nstla_setting_avatarurl', 'nstab_setting_localavatar', 'nstab_setting_avatarurl');
DELETE FROM wp_commentmeta WHERE meta_key IN ('nstla_setting_localavatar', 'nstla_setting_avatarurl', 'nstab_setting_localavatar', 'nstab_setting_avatarurl');

