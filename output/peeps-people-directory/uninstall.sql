-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ph_peeps_phone_format', 'ph_peeps_public_cpt', 'ph_peeps_has_archive', 'ph_peeps_cpt_slug', 'ph_peeps_menu_position');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ph_peeps_email', 'ph_peeps_first_name', 'ph_peeps_middle_name', 'ph_peeps_last_name', 'ph_peeps_phone', 'ph_peeps_social_links');
DELETE FROM wp_usermeta WHERE meta_key IN ('ph_peeps_email', 'ph_peeps_first_name', 'ph_peeps_middle_name', 'ph_peeps_last_name', 'ph_peeps_phone', 'ph_peeps_social_links');
DELETE FROM wp_termmeta WHERE meta_key IN ('ph_peeps_email', 'ph_peeps_first_name', 'ph_peeps_middle_name', 'ph_peeps_last_name', 'ph_peeps_phone', 'ph_peeps_social_links');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ph_peeps_email', 'ph_peeps_first_name', 'ph_peeps_middle_name', 'ph_peeps_last_name', 'ph_peeps_phone', 'ph_peeps_social_links');

