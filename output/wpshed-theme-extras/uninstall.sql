-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wte');
DELETE FROM wp_options WHERE option_name LIKE '%_custom_widgets';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('slide_link_url', 'slide_caption', 'testimonial_text', 'testimonial_author', 'testimonial_link_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('slide_link_url', 'slide_caption', 'testimonial_text', 'testimonial_author', 'testimonial_link_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('slide_link_url', 'slide_caption', 'testimonial_text', 'testimonial_author', 'testimonial_link_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('slide_link_url', 'slide_caption', 'testimonial_text', 'testimonial_author', 'testimonial_link_url');

