-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hrecipe_options', 'hrecipe_rating_text', 'hrecipe_stars_text', 'hrecipe_ingredientlist', 'hrecipe_ingredients_text', 'hrecipe_instructions_text', 'hrecipe_quicknotes_text', 'hrecipe_variations_text', 'hrecipe_summary_text', 'hrecipe_enclosure', 'hrecipe_recipe_text', 'hrecipe_copyright', 'hrecipe_byline', 'hrecipe_linklove', 'hrecipe_reciply', 'hrecipe_bgcolor', 'hrecipe_recipe', 'hrecipe_summary', 'hrecipe_ingredients', 'hrecipe_culinary_tradition', 'hrecipe_support', 'hrecipe_instructions', 'hrecipe_copyrright', 'hrecipe_options[linklove]');

