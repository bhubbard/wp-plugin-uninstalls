-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ct_custom_options_settings', '__cozythemes_demo_importer_do_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cea_testimonial_position', 'cea_testimonial_company', 'cea_team_position', 'cea_team_company', 'cea_team_facebook', 'cea_team_twitter', 'cea_team_linkedin', 'cea_team_youtube', 'cea_team_github', 'cea_team_instagram');
DELETE FROM wp_usermeta WHERE meta_key IN ('cea_testimonial_position', 'cea_testimonial_company', 'cea_team_position', 'cea_team_company', 'cea_team_facebook', 'cea_team_twitter', 'cea_team_linkedin', 'cea_team_youtube', 'cea_team_github', 'cea_team_instagram');
DELETE FROM wp_termmeta WHERE meta_key IN ('cea_testimonial_position', 'cea_testimonial_company', 'cea_team_position', 'cea_team_company', 'cea_team_facebook', 'cea_team_twitter', 'cea_team_linkedin', 'cea_team_youtube', 'cea_team_github', 'cea_team_instagram');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cea_testimonial_position', 'cea_testimonial_company', 'cea_team_position', 'cea_team_company', 'cea_team_facebook', 'cea_team_twitter', 'cea_team_linkedin', 'cea_team_youtube', 'cea_team_github', 'cea_team_instagram');

