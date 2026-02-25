-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lsx_testimonials_scporder_install', 'LSX_Testimonials_Scporder_Install', '_lsx-to_settings', '_lsx_settings', '_lsx_lsx-settings', 'lsx_testimonials_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lsx_testimonial_email_gravatar', 'lsx_testimonial_url', 'lsx_testimonial_byline', 'project_to_testimonial', 'service_to_testimonial', 'team_to_testimonial');
DELETE FROM wp_usermeta WHERE meta_key IN ('lsx_testimonial_email_gravatar', 'lsx_testimonial_url', 'lsx_testimonial_byline', 'project_to_testimonial', 'service_to_testimonial', 'team_to_testimonial');
DELETE FROM wp_termmeta WHERE meta_key IN ('lsx_testimonial_email_gravatar', 'lsx_testimonial_url', 'lsx_testimonial_byline', 'project_to_testimonial', 'service_to_testimonial', 'team_to_testimonial');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lsx_testimonial_email_gravatar', 'lsx_testimonial_url', 'lsx_testimonial_byline', 'project_to_testimonial', 'service_to_testimonial', 'team_to_testimonial');

