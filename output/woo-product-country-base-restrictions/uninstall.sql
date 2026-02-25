-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cbr_pro_update_ignore_377', 'product_visibility', 'wpcbr_hide_restricted_product_variation', 'wpcbr_make_non_purchasable', 'wpcbr_hide_product_price', 'wpcbr_debug_mode', 'wpcbr_message_position', 'wpcbr_default_message', 'wpcbr_force_geo_location', 'wpcbr_redirect_404_page', 'wpcbr_choose_the_page_to_redirect', 'cbr_notice_ignore');
DELETE FROM wp_options WHERE option_name LIKE '%_usage_data_selector';
DELETE FROM wp_options WHERE option_name LIKE '%_optin_email_notification';
DELETE FROM wp_options WHERE option_name LIKE '%_enable_usage_data';
DELETE FROM wp_options WHERE option_name LIKE '%_usage_tracker_last_send';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_fz_country_restriction_type', '_restricted_countries');
DELETE FROM wp_usermeta WHERE meta_key IN ('_fz_country_restriction_type', '_restricted_countries');
DELETE FROM wp_termmeta WHERE meta_key IN ('_fz_country_restriction_type', '_restricted_countries');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_fz_country_restriction_type', '_restricted_countries');

