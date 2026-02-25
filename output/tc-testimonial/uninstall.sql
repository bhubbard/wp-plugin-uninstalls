-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('testimonial_author_s_info_company_name', 'testimonial_author_s_info_designation', 'testimonial_author_s_info_location', 'tcodes_author_company');
DELETE FROM wp_usermeta WHERE meta_key IN ('testimonial_author_s_info_company_name', 'testimonial_author_s_info_designation', 'testimonial_author_s_info_location', 'tcodes_author_company');
DELETE FROM wp_termmeta WHERE meta_key IN ('testimonial_author_s_info_company_name', 'testimonial_author_s_info_designation', 'testimonial_author_s_info_location', 'tcodes_author_company');
DELETE FROM wp_commentmeta WHERE meta_key IN ('testimonial_author_s_info_company_name', 'testimonial_author_s_info_designation', 'testimonial_author_s_info_location', 'tcodes_author_company');

