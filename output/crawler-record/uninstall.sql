-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '_dzcr_lastua_%';
DELETE FROM wp_options WHERE option_name LIKE 'dzcr_latest_url_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '_dzcr_lastua_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_dzcr_lastua_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_dzcr_lastua_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_dzcr_lastua_%';

