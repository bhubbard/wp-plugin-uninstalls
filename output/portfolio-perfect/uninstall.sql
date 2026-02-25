-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('content_blog', 'content_contact', 'content_testimonials');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_simple_email', '_wp_page_template', '_background_image_value_key', '_choices_amount');
DELETE FROM wp_usermeta WHERE meta_key IN ('_simple_email', '_wp_page_template', '_background_image_value_key', '_choices_amount');
DELETE FROM wp_termmeta WHERE meta_key IN ('_simple_email', '_wp_page_template', '_background_image_value_key', '_choices_amount');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_simple_email', '_wp_page_template', '_background_image_value_key', '_choices_amount');

