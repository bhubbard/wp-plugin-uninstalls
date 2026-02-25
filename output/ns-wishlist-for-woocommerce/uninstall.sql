-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nsww_reviews_installed_on', 'nsww_total_open_count', 'ns_whislist_label', 'ns_whislist_modal_link', 'ns-wishlist-page', 'ns_wishlist_font_awesome_pre', 'ns_wishlist_font_awesome_post');
DELETE FROM wp_options WHERE option_name LIKE 'pe-plugin-id-response-%';
DELETE FROM wp_options WHERE option_name LIKE 'plugineye_init%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_nsww_reviews_dismissed_triggers', '_nsww_reviews_last_dismissed', '_nsww_reviews_already_did', 'ns_user_wishlist');
DELETE FROM wp_usermeta WHERE meta_key IN ('_nsww_reviews_dismissed_triggers', '_nsww_reviews_last_dismissed', '_nsww_reviews_already_did', 'ns_user_wishlist');
DELETE FROM wp_termmeta WHERE meta_key IN ('_nsww_reviews_dismissed_triggers', '_nsww_reviews_last_dismissed', '_nsww_reviews_already_did', 'ns_user_wishlist');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_nsww_reviews_dismissed_triggers', '_nsww_reviews_last_dismissed', '_nsww_reviews_already_did', 'ns_user_wishlist');

