-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('recipe_creator__last_successful_migration', 'recipe_creator__thumbnail_size', 'recipe_creator__show_jump_to_recipe', 'recipe_creator__primary_color', 'recipe_creator__primary_color_contrast', 'recipe_creator__primary_color_light', 'recipe_creator__primary_color_light_contrast', 'recipe_creator__primary_color_dark', 'recipe_creator__secondary_color', 'recipe_creator__secondary_color_contrast', 'recipe_creator__background_color', 'recipe_creator__background_color_contrast', 'recipe_creator__show_box_shadow', 'recipe_creator__show_border', 'recipe_creator__border_radius', 'recipe_creator__instagram__username', 'recipe_creator__instagram__hashtag');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('recipe_creator__average_rating', 'recipe_creator__rating_count', 'recipe_creator__rating_1_votes', 'recipe_creator__rating_2_votes', 'recipe_creator__rating_3_votes', 'recipe_creator__rating_4_votes', 'recipe_creator__rating_5_votes');
DELETE FROM wp_usermeta WHERE meta_key IN ('recipe_creator__average_rating', 'recipe_creator__rating_count', 'recipe_creator__rating_1_votes', 'recipe_creator__rating_2_votes', 'recipe_creator__rating_3_votes', 'recipe_creator__rating_4_votes', 'recipe_creator__rating_5_votes');
DELETE FROM wp_termmeta WHERE meta_key IN ('recipe_creator__average_rating', 'recipe_creator__rating_count', 'recipe_creator__rating_1_votes', 'recipe_creator__rating_2_votes', 'recipe_creator__rating_3_votes', 'recipe_creator__rating_4_votes', 'recipe_creator__rating_5_votes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('recipe_creator__average_rating', 'recipe_creator__rating_count', 'recipe_creator__rating_1_votes', 'recipe_creator__rating_2_votes', 'recipe_creator__rating_3_votes', 'recipe_creator__rating_4_votes', 'recipe_creator__rating_5_votes');

