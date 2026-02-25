-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', '_wp_attachment_image_alt', 'testimonial_designation', 'testimonial_company');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', '_wp_attachment_image_alt', 'testimonial_designation', 'testimonial_company');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', '_wp_attachment_image_alt', 'testimonial_designation', 'testimonial_company');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', '_wp_attachment_image_alt', 'testimonial_designation', 'testimonial_company');

