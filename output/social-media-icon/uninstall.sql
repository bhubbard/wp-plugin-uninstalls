-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('socialmedia_Default_Setting');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'socialmedia_custom_setting_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'socialmedia_custom_setting_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'socialmedia_custom_setting_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'socialmedia_custom_setting_%';

