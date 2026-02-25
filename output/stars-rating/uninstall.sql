-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('enabled_post_types', 'require_rating', 'avg_rating_display', 'stars_style', 'google_search_stars', 'google_search_stars_type', 'sr_negative_rating_alert', 'sr_negative_rating_threshold', 'sr_negative_rating_contact_url', ' avg_rating_display', ' enabled_post_types', ' google_search_stars');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rating', 'sr-comments-rating');
DELETE FROM wp_usermeta WHERE meta_key IN ('rating', 'sr-comments-rating');
DELETE FROM wp_termmeta WHERE meta_key IN ('rating', 'sr-comments-rating');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rating', 'sr-comments-rating');

