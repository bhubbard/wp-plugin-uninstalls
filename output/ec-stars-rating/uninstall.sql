-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ec_stars_rating_use_jquery', 'ec_stars_rating_size', 'ec_stars_rating_hover_color', 'ec_stars_rating_default_color', 'ec_stars_rating_active_color', 'ec_stars_rating_show_votes', 'ec_stars_rating_use_microformats', 'ec_stars_rating_enable_widget');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ec_stars_rating', 'ec_stars_rating_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('ec_stars_rating', 'ec_stars_rating_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('ec_stars_rating', 'ec_stars_rating_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ec_stars_rating', 'ec_stars_rating_count');

