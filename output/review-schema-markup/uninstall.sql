-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('review-max-rating', 'review-interval-rating', 'review-show-rating', 'review-fill-style');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('schema_item_name', 'schema_item_url', 'schema_rating');
DELETE FROM wp_usermeta WHERE meta_key IN ('schema_item_name', 'schema_item_url', 'schema_rating');
DELETE FROM wp_termmeta WHERE meta_key IN ('schema_item_name', 'schema_item_url', 'schema_rating');
DELETE FROM wp_commentmeta WHERE meta_key IN ('schema_item_name', 'schema_item_url', 'schema_rating');

