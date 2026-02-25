-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('solea_central_member_management', 'solea_icon_children', 'solea_icon_adults', 'solea_registration_order_url', 'solea_account_owner', 'solea_account_iban', 'solea_last_version', 'page_used_for_state');
DELETE FROM wp_options WHERE option_name LIKE 'solea-rest-api-nonce-user%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name', 'telephone', 'localgroup', 'street', 'housenumber', 'zipcode', 'city', 'allergies', 'intolerances', 'medication', 'birthday', 'solea_nickname');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name', 'telephone', 'localgroup', 'street', 'housenumber', 'zipcode', 'city', 'allergies', 'intolerances', 'medication', 'birthday', 'solea_nickname');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name', 'telephone', 'localgroup', 'street', 'housenumber', 'zipcode', 'city', 'allergies', 'intolerances', 'medication', 'birthday', 'solea_nickname');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name', 'telephone', 'localgroup', 'street', 'housenumber', 'zipcode', 'city', 'allergies', 'intolerances', 'medication', 'birthday', 'solea_nickname');

