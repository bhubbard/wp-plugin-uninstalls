-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'cmvlf_refresh_404_permalinks');
DELETE FROM wp_options WHERE option_name LIKE '%-registration-skipped';
DELETE FROM wp_options WHERE option_name LIKE '%-registered';
DELETE FROM wp_options WHERE option_name LIKE '%-was-registered';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cmvl_mp_subscription');
DELETE FROM wp_usermeta WHERE meta_key IN ('cmvl_mp_subscription');
DELETE FROM wp_termmeta WHERE meta_key IN ('cmvl_mp_subscription');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cmvl_mp_subscription');

