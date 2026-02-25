-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cf7_2checkout_mode', 'cf7_test_2checkout_sellerid', 'cf7_test_2checkout_privatekey', 'cf7_test_2checkout_publickey', 'cf7_live_2checkout_sellerid', 'cf7_live_2checkout_privatekey', 'cf7_live_2checkout_publickey');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cf7_2checkout_address_fields');
DELETE FROM wp_usermeta WHERE meta_key IN ('cf7_2checkout_address_fields');
DELETE FROM wp_termmeta WHERE meta_key IN ('cf7_2checkout_address_fields');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cf7_2checkout_address_fields');

