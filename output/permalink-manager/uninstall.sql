-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('permalink-manager-redirects', 'wpseo_permalinks', 'permalink-manager', 'permalink-manager-permastructs', 'permalink-manager-uris', 'trp_settings', 'wpseo_taxonomy_meta', 'custom_permalink_table', 'duplicate_post_blacklist', 'options_general_explore_listings_page', 'basepress_settings', 'woocommerce_shop_page_id', 'permalink-manager-external-redirects', 'permalink-manager-alerts', 'pll_translated_slugs');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_seopress_robots_primary_cat', 'auto_update_uri', '_yoast_wpseo_canonical', '_seopress_robots_breadcrumbs', 'rank_math_breadcrumb_title', '_yoast_wpseo_bctitle', '_external_redirect', 'external_redirect', '_case27_listing_type', '_job_location');
DELETE FROM wp_usermeta WHERE meta_key IN ('_seopress_robots_primary_cat', 'auto_update_uri', '_yoast_wpseo_canonical', '_seopress_robots_breadcrumbs', 'rank_math_breadcrumb_title', '_yoast_wpseo_bctitle', '_external_redirect', 'external_redirect', '_case27_listing_type', '_job_location');
DELETE FROM wp_termmeta WHERE meta_key IN ('_seopress_robots_primary_cat', 'auto_update_uri', '_yoast_wpseo_canonical', '_seopress_robots_breadcrumbs', 'rank_math_breadcrumb_title', '_yoast_wpseo_bctitle', '_external_redirect', 'external_redirect', '_case27_listing_type', '_job_location');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_seopress_robots_primary_cat', 'auto_update_uri', '_yoast_wpseo_canonical', '_seopress_robots_breadcrumbs', 'rank_math_breadcrumb_title', '_yoast_wpseo_bctitle', '_external_redirect', 'external_redirect', '_case27_listing_type', '_job_location');

