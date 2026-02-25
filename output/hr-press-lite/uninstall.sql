-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'middle_name', 'last_name', 'father_name', 'mother_name', 'spouse_name', 'marital_status', 'driving_license', 'blood_group', 'nationality', 'gender', 'address_1', 'address_2', 'city', 'country', 'state', 'zip_code', 'bio');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'middle_name', 'last_name', 'father_name', 'mother_name', 'spouse_name', 'marital_status', 'driving_license', 'blood_group', 'nationality', 'gender', 'address_1', 'address_2', 'city', 'country', 'state', 'zip_code', 'bio');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'middle_name', 'last_name', 'father_name', 'mother_name', 'spouse_name', 'marital_status', 'driving_license', 'blood_group', 'nationality', 'gender', 'address_1', 'address_2', 'city', 'country', 'state', 'zip_code', 'bio');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'middle_name', 'last_name', 'father_name', 'mother_name', 'spouse_name', 'marital_status', 'driving_license', 'blood_group', 'nationality', 'gender', 'address_1', 'address_2', 'city', 'country', 'state', 'zip_code', 'bio');

