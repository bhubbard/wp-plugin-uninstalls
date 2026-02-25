-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpt_effect', 'wpt_speed', 'wpt_sortby', 'wpt_orderby', 'wpt_content_limit', 'wpt_viewall', 'wpt_viewall_page');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpt_testimonial_author', '_wpt_testimonial_designation', '_wpt_testimonial_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpt_testimonial_author', '_wpt_testimonial_designation', '_wpt_testimonial_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpt_testimonial_author', '_wpt_testimonial_designation', '_wpt_testimonial_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpt_testimonial_author', '_wpt_testimonial_designation', '_wpt_testimonial_url');

