-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('username', 'password', 'appkey', 'pagetype', 'testmode', 'autogenerate');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('geniki-taxidromiki-is-canceled', 'geniki-taxidromiki-is-closed', 'geniki-taxidromiki-jobid', 'geniki-taxidromiki-voucher-number', 'geniki-taxidromiki-voucher-url', 'geniki-taxidromiki-voucher-date');
DELETE FROM wp_usermeta WHERE meta_key IN ('geniki-taxidromiki-is-canceled', 'geniki-taxidromiki-is-closed', 'geniki-taxidromiki-jobid', 'geniki-taxidromiki-voucher-number', 'geniki-taxidromiki-voucher-url', 'geniki-taxidromiki-voucher-date');
DELETE FROM wp_termmeta WHERE meta_key IN ('geniki-taxidromiki-is-canceled', 'geniki-taxidromiki-is-closed', 'geniki-taxidromiki-jobid', 'geniki-taxidromiki-voucher-number', 'geniki-taxidromiki-voucher-url', 'geniki-taxidromiki-voucher-date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('geniki-taxidromiki-is-canceled', 'geniki-taxidromiki-is-closed', 'geniki-taxidromiki-jobid', 'geniki-taxidromiki-voucher-number', 'geniki-taxidromiki-voucher-url', 'geniki-taxidromiki-voucher-date');

