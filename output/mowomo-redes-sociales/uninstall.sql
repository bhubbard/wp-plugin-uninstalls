-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mwm_rrss_actives', 'mwm_rrss_posicion', 'mwm_rrss_twitter', 'mwm-plugins', 'mwm-plugin-notices');
DELETE FROM wp_options WHERE option_name LIKE '%-version';
DELETE FROM wp_options WHERE option_name LIKE '%-actives';
DELETE FROM wp_options WHERE option_name LIKE '%-posicion';
DELETE FROM wp_options WHERE option_name LIKE '%-twitter';
DELETE FROM wp_options WHERE option_name LIKE '%-init';
DELETE FROM wp_options WHERE option_name LIKE '%-appearance';
DELETE FROM wp_options WHERE option_name LIKE '%-alignment';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');

