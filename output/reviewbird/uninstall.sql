-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('reviewbird_store_id', 'reviewbird_store_status', 'reviewbird_enable_widget', 'reviewbird_enable_schema', 'reviewbird_force_reviews_open', 'reviewbird_oauth_error', 'reviewbird_oauth_success', 'reviewbird_star_color');
DELETE FROM wp_options WHERE option_name LIKE 'reviewbird_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_reviewbird_avg_stars', '_reviewbird_reviews_count', '_reviewbird_rating_counts');
DELETE FROM wp_usermeta WHERE meta_key IN ('_reviewbird_avg_stars', '_reviewbird_reviews_count', '_reviewbird_rating_counts');
DELETE FROM wp_termmeta WHERE meta_key IN ('_reviewbird_avg_stars', '_reviewbird_reviews_count', '_reviewbird_rating_counts');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_reviewbird_avg_stars', '_reviewbird_reviews_count', '_reviewbird_rating_counts');

