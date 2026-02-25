-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('codecocktail_wiki_username', 'codecocktail_wiki_user_param');

