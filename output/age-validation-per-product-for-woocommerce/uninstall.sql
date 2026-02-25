-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_dob_validation_from', '_dob_validation_to', '_dob_validation_global_from', '_dob_validation_global_to', '_user_date_of_birth', '_billing_date_of_birth');
DELETE FROM wp_usermeta WHERE meta_key IN ('_dob_validation_from', '_dob_validation_to', '_dob_validation_global_from', '_dob_validation_global_to', '_user_date_of_birth', '_billing_date_of_birth');
DELETE FROM wp_termmeta WHERE meta_key IN ('_dob_validation_from', '_dob_validation_to', '_dob_validation_global_from', '_dob_validation_global_to', '_user_date_of_birth', '_billing_date_of_birth');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_dob_validation_from', '_dob_validation_to', '_dob_validation_global_from', '_dob_validation_global_to', '_user_date_of_birth', '_billing_date_of_birth');

