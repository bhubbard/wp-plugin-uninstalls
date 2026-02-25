-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tj_testimonial_author_name', 'tj_testimonial_author_avatar', 'tj_testimonial_site_name', 'tj_testimonial_site_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('tj_testimonial_author_name', 'tj_testimonial_author_avatar', 'tj_testimonial_site_name', 'tj_testimonial_site_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('tj_testimonial_author_name', 'tj_testimonial_author_avatar', 'tj_testimonial_site_name', 'tj_testimonial_site_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tj_testimonial_author_name', 'tj_testimonial_author_avatar', 'tj_testimonial_site_name', 'tj_testimonial_site_url');

