-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pureclarity_db_version', 'pureclarity_mode', 'pureclarity_accesskey', 'pureclarity_secretkey', 'pureclarity_region', 'pureclarity_nightly_feed_enabled', 'pureclarity_deltas_enabled', 'pureclarity_bmz_debug', 'pureclarity_add_bmz_homepage', 'pureclarity_add_bmz_searchpage', 'pureclarity_add_bmz_categorypage', 'pureclarity_add_bmz_productpage', 'pureclarity_add_bmz_basketpage', 'pureclarity_add_bmz_checkoutpage', 'pureclarity_category_feed_required', 'pureclarity_feed_debug_logging', 'pureclarity_product_feed_exclude_oos', 'pureclarity_env_subheading', 'pureclarity_feeds_subheading', 'pureclarity_zones_subheading', 'pureclarity_brandfeed_run', 'pureclarity_catfeed_run', 'pureclarity_delta_running', 'pureclarity_orderfeed_run', 'pureclarity_prodfeed_run', 'pureclarity_product_deltas', 'pureclarity_user_deltas', 'pureclarity_userfeed_run');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_price');

