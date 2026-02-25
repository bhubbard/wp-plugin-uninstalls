-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('txtClientNumber', 'txtDispatchDate', 'txtWeightInGrams', 'txtWidthInCentimeters', 'txtLengthInCentimeters', 'txtHeightInCentimeters', 'txtNoteOne', 'txtNoteTwo', 'txtRecipientCharge', 'txtVolumesNumber', 'txtCountry', 'txtZipCode', 'txtAddress', 'txtCity', 'txtState', 'txtContactName', 'txtPhone', 'txtEmail', 'txtAdditionalServices', 'txtStartDate', 'txtEndDate', 'ddlStatus', 'txtApiKey', 'plugin_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_customer_user');
DELETE FROM wp_usermeta WHERE meta_key IN ('_customer_user');
DELETE FROM wp_termmeta WHERE meta_key IN ('_customer_user');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_customer_user');

