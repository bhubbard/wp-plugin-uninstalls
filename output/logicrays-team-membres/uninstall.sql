-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lrtm_show_social', 'lrtm_grid_layout', 'lrtm_image_hover_animation');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lrtm_position', 'lrtm_facebook', 'lrtm_twitter', 'lrtm_linkdin', 'lrtm_member_bio');
DELETE FROM wp_usermeta WHERE meta_key IN ('lrtm_position', 'lrtm_facebook', 'lrtm_twitter', 'lrtm_linkdin', 'lrtm_member_bio');
DELETE FROM wp_termmeta WHERE meta_key IN ('lrtm_position', 'lrtm_facebook', 'lrtm_twitter', 'lrtm_linkdin', 'lrtm_member_bio');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lrtm_position', 'lrtm_facebook', 'lrtm_twitter', 'lrtm_linkdin', 'lrtm_member_bio');

