-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('iamport_rest_key', 'iamport_rest_secret', '_iamport_customer_prefix', '_iamport_rsa_keyphrase', '_iamport_rsa_private_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_iamport_rest_key', '_iamport_rest_secret');
DELETE FROM wp_usermeta WHERE meta_key IN ('_iamport_rest_key', '_iamport_rest_secret');
DELETE FROM wp_termmeta WHERE meta_key IN ('_iamport_rest_key', '_iamport_rest_secret');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_iamport_rest_key', '_iamport_rest_secret');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

