-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('testimonial_slider_options', 'testimonial_slider_scounter', 'testimonial_db_version');
DELETE FROM wp_options WHERE option_name LIKE 'testimonial_slider_options%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('testimonial_slide_redirect_url', '_testimonial_sslider_nolink', 'testimonial_link_attr', '_testimonial_by', '_testimonial_avatar', '_testimonial_site', '_testimonial_siteurl', '_testimonial_star');
DELETE FROM wp_usermeta WHERE meta_key IN ('testimonial_slide_redirect_url', '_testimonial_sslider_nolink', 'testimonial_link_attr', '_testimonial_by', '_testimonial_avatar', '_testimonial_site', '_testimonial_siteurl', '_testimonial_star');
DELETE FROM wp_termmeta WHERE meta_key IN ('testimonial_slide_redirect_url', '_testimonial_sslider_nolink', 'testimonial_link_attr', '_testimonial_by', '_testimonial_avatar', '_testimonial_site', '_testimonial_siteurl', '_testimonial_star');
DELETE FROM wp_commentmeta WHERE meta_key IN ('testimonial_slide_redirect_url', '_testimonial_sslider_nolink', 'testimonial_link_attr', '_testimonial_by', '_testimonial_avatar', '_testimonial_site', '_testimonial_siteurl', '_testimonial_star');

