<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hrecipe_options');
delete_site_option('hrecipe_options');
delete_option('hrecipe_rating_text');
delete_site_option('hrecipe_rating_text');
delete_option('hrecipe_stars_text');
delete_site_option('hrecipe_stars_text');
delete_option('hrecipe_ingredientlist');
delete_site_option('hrecipe_ingredientlist');
delete_option('hrecipe_ingredients_text');
delete_site_option('hrecipe_ingredients_text');
delete_option('hrecipe_instructions_text');
delete_site_option('hrecipe_instructions_text');
delete_option('hrecipe_quicknotes_text');
delete_site_option('hrecipe_quicknotes_text');
delete_option('hrecipe_variations_text');
delete_site_option('hrecipe_variations_text');
delete_option('hrecipe_summary_text');
delete_site_option('hrecipe_summary_text');
delete_option('hrecipe_enclosure');
delete_site_option('hrecipe_enclosure');
delete_option('hrecipe_recipe_text');
delete_site_option('hrecipe_recipe_text');
delete_option('hrecipe_copyright');
delete_site_option('hrecipe_copyright');
delete_option('hrecipe_byline');
delete_site_option('hrecipe_byline');
delete_option('hrecipe_linklove');
delete_site_option('hrecipe_linklove');
delete_option('hrecipe_reciply');
delete_site_option('hrecipe_reciply');
delete_option('hrecipe_bgcolor');
delete_site_option('hrecipe_bgcolor');
delete_option('hrecipe_recipe');
delete_site_option('hrecipe_recipe');
delete_option('hrecipe_summary');
delete_site_option('hrecipe_summary');
delete_option('hrecipe_ingredients');
delete_site_option('hrecipe_ingredients');
delete_option('hrecipe_culinary_tradition');
delete_site_option('hrecipe_culinary_tradition');
delete_option('hrecipe_support');
delete_site_option('hrecipe_support');
delete_option('hrecipe_instructions');
delete_site_option('hrecipe_instructions');
delete_option('hrecipe_copyrright');
delete_site_option('hrecipe_copyrright');
delete_option('hrecipe_options[linklove]');
delete_site_option('hrecipe_options[linklove]');

