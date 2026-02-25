-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stripe_forms_gutenberg_api_secret', 'stripe_forms_gutenberg_api_public');

