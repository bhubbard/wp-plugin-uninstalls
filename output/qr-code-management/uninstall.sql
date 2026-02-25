-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rwc_qrcm', 'rwcqrcm', 'rwc_qrcm_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rwcqrcm_permalink', 'rwcqrcm_qrdata_url_permalink', 'rwc_qrcm_redirect_code');
DELETE FROM wp_usermeta WHERE meta_key IN ('rwcqrcm_permalink', 'rwcqrcm_qrdata_url_permalink', 'rwc_qrcm_redirect_code');
DELETE FROM wp_termmeta WHERE meta_key IN ('rwcqrcm_permalink', 'rwcqrcm_qrdata_url_permalink', 'rwc_qrcm_redirect_code');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rwcqrcm_permalink', 'rwcqrcm_qrdata_url_permalink', 'rwc_qrcm_redirect_code');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'rwcqrcm_qrdata_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'rwcqrcm_qrdata_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'rwcqrcm_qrdata_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'rwcqrcm_qrdata_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'rwcqrcm_qrsettings_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'rwcqrcm_qrsettings_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'rwcqrcm_qrsettings_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'rwcqrcm_qrsettings_%';

