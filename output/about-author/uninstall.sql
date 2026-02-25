-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('author_info_Settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name', 'description', 'followbitbucket', 'followdropbox', 'followfb', 'followflicker', 'followgithub', 'followinsta', 'followlinkdln', 'followpint', 'followtumbler', 'followtwit', 'followtVk');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name', 'description', 'followbitbucket', 'followdropbox', 'followfb', 'followflicker', 'followgithub', 'followinsta', 'followlinkdln', 'followpint', 'followtumbler', 'followtwit', 'followtVk');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name', 'description', 'followbitbucket', 'followdropbox', 'followfb', 'followflicker', 'followgithub', 'followinsta', 'followlinkdln', 'followpint', 'followtumbler', 'followtwit', 'followtVk');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name', 'description', 'followbitbucket', 'followdropbox', 'followfb', 'followflicker', 'followgithub', 'followinsta', 'followlinkdln', 'followpint', 'followtumbler', 'followtwit', 'followtVk');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'weblizar_Settings_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'weblizar_Settings_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'weblizar_Settings_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'weblizar_Settings_%';

