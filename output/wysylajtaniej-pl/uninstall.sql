-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_dimension_unit', 'woocommerce_weight_unit', 'wysylajtaniej_bulk_action_errors', 'my_custom_error');
DELETE FROM wp_options WHERE option_name LIKE '%_sender_name';
DELETE FROM wp_options WHERE option_name LIKE '%_sender_surname';
DELETE FROM wp_options WHERE option_name LIKE '%_sender_companyName';
DELETE FROM wp_options WHERE option_name LIKE '%_sender_postCode';
DELETE FROM wp_options WHERE option_name LIKE '%_sender_city';
DELETE FROM wp_options WHERE option_name LIKE '%_sender_street';
DELETE FROM wp_options WHERE option_name LIKE '%_sender_building';
DELETE FROM wp_options WHERE option_name LIKE '%_sender_local';
DELETE FROM wp_options WHERE option_name LIKE '%_sender_email';
DELETE FROM wp_options WHERE option_name LIKE '%_sender_telephone';
DELETE FROM wp_options WHERE option_name LIKE '%_sender_account';
DELETE FROM wp_options WHERE option_name LIKE '%_sender_ubez';
DELETE FROM wp_options WHERE option_name LIKE '%_sender_dkurier';
DELETE FROM wp_options WHERE option_name LIKE '%_sender_dOpis';
DELETE FROM wp_options WHERE option_name LIKE '%_sender_dWidth';
DELETE FROM wp_options WHERE option_name LIKE '%_sender_dHeight';
DELETE FROM wp_options WHERE option_name LIKE '%_sender_dLength';
DELETE FROM wp_options WHERE option_name LIKE '%_sender_dWeight';
DELETE FROM wp_options WHERE option_name LIKE '%_sender_dPWR';
DELETE FROM wp_options WHERE option_name LIKE '%_sender_dInpost';
DELETE FROM wp_options WHERE option_name LIKE '%_sender_dDPD';
DELETE FROM wp_options WHERE option_name LIKE '%_sender_dUrl';
DELETE FROM wp_options WHERE option_name LIKE '%_disable_dUrl';
DELETE FROM wp_options WHERE option_name LIKE '%_deliveryToType';
DELETE FROM wp_options WHERE option_name LIKE '%_api_key';
DELETE FROM wp_options WHERE option_name LIKE '%_email';
DELETE FROM wp_options WHERE option_name LIKE '%_client_ID';
DELETE FROM wp_options WHERE option_name LIKE '%_access_token';
DELETE FROM wp_options WHERE option_name LIKE '%_client_secret';
DELETE FROM wp_options WHERE option_name LIKE '%_test_mode';
DELETE FROM wp_options WHERE option_name LIKE '%_sender_disable_dUrl';
DELETE FROM wp_options WHERE option_name LIKE '%_cod_iban';
DELETE FROM wp_options WHERE option_name LIKE '%_source_id';
DELETE FROM wp_options WHERE option_name LIKE '%_cod_accountOwner';
DELETE FROM wp_options WHERE option_name LIKE '%_googleMapsApiKey';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wysylajtaniejObject', '_wysylajtaniejService', '_wysylajtaniejPoint');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wysylajtaniejObject', '_wysylajtaniejService', '_wysylajtaniejPoint');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wysylajtaniejObject', '_wysylajtaniejService', '_wysylajtaniejPoint');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wysylajtaniejObject', '_wysylajtaniejService', '_wysylajtaniejPoint');

