-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('testimonial_post_count', 'testimonial_title', 'testimonial_content');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('Layout', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('Layout', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('Layout', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('Layout', '_wp_page_template');

