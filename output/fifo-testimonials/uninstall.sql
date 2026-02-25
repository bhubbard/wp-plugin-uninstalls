-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('post_per_page');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_gender_type', '_testimonial_url', '_testimonial_companyname', '_testimonial_username');
DELETE FROM wp_usermeta WHERE meta_key IN ('_gender_type', '_testimonial_url', '_testimonial_companyname', '_testimonial_username');
DELETE FROM wp_termmeta WHERE meta_key IN ('_gender_type', '_testimonial_url', '_testimonial_companyname', '_testimonial_username');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_gender_type', '_testimonial_url', '_testimonial_companyname', '_testimonial_username');

