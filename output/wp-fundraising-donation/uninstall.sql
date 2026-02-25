-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wfp_setup_services_data', 'wfp_fundraising_version', 'wfp_enable_myaccount_registration');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%_crop';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wfp_portfolio_gallery', '__wfp_campaign_status', '_virtual', 'wfp_featured_video_url', '_thumbnail_id', '__wfp_public_review_data', '_price', '_regular_price', '_wfp_first_name', '_wfp_last_name', '_wfp_email_address', '_wfp_country', '_wfp_street_address', '_wfp_city', '_wfp_postcode', 'wfp_form_options_meta_data', 'nickname', '_wfp_phone', 'description', '_wfp_company_name', '_wfp_first_name_ship', '_wfp_last_name_ship', '_wfp_company_name_ship', '_wfp_street_address_ship', '_wfp_city_ship', '_wfp_postcode_ship', '_wfp_country_ship', '_wfp_phone_ship', '_wfp_email_address_ship');
DELETE FROM wp_usermeta WHERE meta_key IN ('wfp_portfolio_gallery', '__wfp_campaign_status', '_virtual', 'wfp_featured_video_url', '_thumbnail_id', '__wfp_public_review_data', '_price', '_regular_price', '_wfp_first_name', '_wfp_last_name', '_wfp_email_address', '_wfp_country', '_wfp_street_address', '_wfp_city', '_wfp_postcode', 'wfp_form_options_meta_data', 'nickname', '_wfp_phone', 'description', '_wfp_company_name', '_wfp_first_name_ship', '_wfp_last_name_ship', '_wfp_company_name_ship', '_wfp_street_address_ship', '_wfp_city_ship', '_wfp_postcode_ship', '_wfp_country_ship', '_wfp_phone_ship', '_wfp_email_address_ship');
DELETE FROM wp_termmeta WHERE meta_key IN ('wfp_portfolio_gallery', '__wfp_campaign_status', '_virtual', 'wfp_featured_video_url', '_thumbnail_id', '__wfp_public_review_data', '_price', '_regular_price', '_wfp_first_name', '_wfp_last_name', '_wfp_email_address', '_wfp_country', '_wfp_street_address', '_wfp_city', '_wfp_postcode', 'wfp_form_options_meta_data', 'nickname', '_wfp_phone', 'description', '_wfp_company_name', '_wfp_first_name_ship', '_wfp_last_name_ship', '_wfp_company_name_ship', '_wfp_street_address_ship', '_wfp_city_ship', '_wfp_postcode_ship', '_wfp_country_ship', '_wfp_phone_ship', '_wfp_email_address_ship');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wfp_portfolio_gallery', '__wfp_campaign_status', '_virtual', 'wfp_featured_video_url', '_thumbnail_id', '__wfp_public_review_data', '_price', '_regular_price', '_wfp_first_name', '_wfp_last_name', '_wfp_email_address', '_wfp_country', '_wfp_street_address', '_wfp_city', '_wfp_postcode', 'wfp_form_options_meta_data', 'nickname', '_wfp_phone', 'description', '_wfp_company_name', '_wfp_first_name_ship', '_wfp_last_name_ship', '_wfp_company_name_ship', '_wfp_street_address_ship', '_wfp_city_ship', '_wfp_postcode_ship', '_wfp_country_ship', '_wfp_phone_ship', '_wfp_email_address_ship');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_wfp_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_wfp_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_wfp_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wfp_%';

