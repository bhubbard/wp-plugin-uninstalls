-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sip_version_value', 'woocommerce_default_country', 'sip_rswc_color_options', 'sip_rswc_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sip_rswc_notice_dismissed', '_wc_review_count', '_wc_average_rating', '_wc_rating_count', '_price', 'rating');
DELETE FROM wp_usermeta WHERE meta_key IN ('sip_rswc_notice_dismissed', '_wc_review_count', '_wc_average_rating', '_wc_rating_count', '_price', 'rating');
DELETE FROM wp_termmeta WHERE meta_key IN ('sip_rswc_notice_dismissed', '_wc_review_count', '_wc_average_rating', '_wc_rating_count', '_price', 'rating');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sip_rswc_notice_dismissed', '_wc_review_count', '_wc_average_rating', '_wc_rating_count', '_price', 'rating');

