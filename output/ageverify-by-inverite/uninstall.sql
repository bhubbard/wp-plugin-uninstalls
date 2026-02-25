-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ivav-guid', 'ivav-status', 'ivav-date', 'ivav-birthdate', 'ivav-age', 'ivav-firstname', 'ivav-lastname', 'ivav-reason', 'ivav-guid-tmp', 'ivav-similiarity', 'ivav-referenceid', 'ivav-gender', 'ivav-skip', '_customer_ip_address');
DELETE FROM wp_usermeta WHERE meta_key IN ('ivav-guid', 'ivav-status', 'ivav-date', 'ivav-birthdate', 'ivav-age', 'ivav-firstname', 'ivav-lastname', 'ivav-reason', 'ivav-guid-tmp', 'ivav-similiarity', 'ivav-referenceid', 'ivav-gender', 'ivav-skip', '_customer_ip_address');
DELETE FROM wp_termmeta WHERE meta_key IN ('ivav-guid', 'ivav-status', 'ivav-date', 'ivav-birthdate', 'ivav-age', 'ivav-firstname', 'ivav-lastname', 'ivav-reason', 'ivav-guid-tmp', 'ivav-similiarity', 'ivav-referenceid', 'ivav-gender', 'ivav-skip', '_customer_ip_address');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ivav-guid', 'ivav-status', 'ivav-date', 'ivav-birthdate', 'ivav-age', 'ivav-firstname', 'ivav-lastname', 'ivav-reason', 'ivav-guid-tmp', 'ivav-similiarity', 'ivav-referenceid', 'ivav-gender', 'ivav-skip', '_customer_ip_address');

