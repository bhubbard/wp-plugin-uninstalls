-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('resumecv_options', 'resumecv_award_options', 'resumecv_contact_options', 'resumecv_education_options', 'resumecv_experience_options', 'resumecv_hobby_options', 'resumecv_profile_options', 'resumecv_qualification_options', 'resumecv_reference_options', 'resumecv_service_options', 'resumecv_skillbar_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template');

