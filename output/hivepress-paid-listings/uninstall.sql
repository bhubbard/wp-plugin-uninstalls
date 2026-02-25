-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hp_listing_package_allow_free', 'hp_listing_enable_moderation', 'hp_product_listing_feature', 'hp_listing_featuring_period');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('hp_moderated');
DELETE FROM wp_usermeta WHERE meta_key IN ('hp_moderated');
DELETE FROM wp_termmeta WHERE meta_key IN ('hp_moderated');
DELETE FROM wp_commentmeta WHERE meta_key IN ('hp_moderated');

