-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hp_listing_claim_categories', 'hp_product_listing_claim', 'hp_listing_claim_enable_moderation');

