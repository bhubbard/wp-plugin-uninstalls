-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ct_activated', 'ct_prompted');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('testimonial_client_name', 'testimonial_client_company_name', 'testimonial_client_email', 'testimonial_client_company_website', 'testimonial_client_company', 'testimonial_client_website', 'testimonial_client_permission', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('testimonial_client_name', 'testimonial_client_company_name', 'testimonial_client_email', 'testimonial_client_company_website', 'testimonial_client_company', 'testimonial_client_website', 'testimonial_client_permission', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('testimonial_client_name', 'testimonial_client_company_name', 'testimonial_client_email', 'testimonial_client_company_website', 'testimonial_client_company', 'testimonial_client_website', 'testimonial_client_permission', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('testimonial_client_name', 'testimonial_client_company_name', 'testimonial_client_email', 'testimonial_client_company_website', 'testimonial_client_company', 'testimonial_client_website', 'testimonial_client_permission', '_thumbnail_id');

