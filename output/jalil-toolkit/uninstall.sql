-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('jalil_team_options', 'jalil_testimonial_options', 'jalil_slide_options');
DELETE FROM wp_usermeta WHERE meta_key IN ('jalil_team_options', 'jalil_testimonial_options', 'jalil_slide_options');
DELETE FROM wp_termmeta WHERE meta_key IN ('jalil_team_options', 'jalil_testimonial_options', 'jalil_slide_options');
DELETE FROM wp_commentmeta WHERE meta_key IN ('jalil_team_options', 'jalil_testimonial_options', 'jalil_slide_options');

