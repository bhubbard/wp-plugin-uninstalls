-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', '_cmb_testimonial_url', '_cmb_testimonial_usermane');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', '_cmb_testimonial_url', '_cmb_testimonial_usermane');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', '_cmb_testimonial_url', '_cmb_testimonial_usermane');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', '_cmb_testimonial_url', '_cmb_testimonial_usermane');

