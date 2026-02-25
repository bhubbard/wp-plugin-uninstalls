-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ccr_testimonial_client_name', 'ccr_testimonial_client_designaion');
DELETE FROM wp_usermeta WHERE meta_key IN ('ccr_testimonial_client_name', 'ccr_testimonial_client_designaion');
DELETE FROM wp_termmeta WHERE meta_key IN ('ccr_testimonial_client_name', 'ccr_testimonial_client_designaion');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ccr_testimonial_client_name', 'ccr_testimonial_client_designaion');

