-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('atticthemes_social_icon_sets', 'atticthemes_social_icons_ids');

