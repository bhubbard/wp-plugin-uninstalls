-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cryout_serious_slider_link', 'cryout_serious_slider_target');
DELETE FROM wp_usermeta WHERE meta_key IN ('cryout_serious_slider_link', 'cryout_serious_slider_target');
DELETE FROM wp_termmeta WHERE meta_key IN ('cryout_serious_slider_link', 'cryout_serious_slider_target');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cryout_serious_slider_link', 'cryout_serious_slider_target');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'cryout_serious_slider_button%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'cryout_serious_slider_button%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'cryout_serious_slider_button%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'cryout_serious_slider_button%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_url';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_url';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_url';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_url';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_target';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_target';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_target';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_target';

