-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('SHOPPABLE_RECIPES_review_dismissed', 'save-recipe', 'contacts', 'SHOPPABLE_RECIPES_version');
DELETE FROM wp_options WHERE option_name LIKE '%_version';

