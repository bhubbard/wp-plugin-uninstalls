-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('geoforai_home_description', 'geoforai_home_topics', 'geoforai_llms_training', 'geoforai_llms_scraping', 'geoforai_business_name', 'geoforai_business_address1', 'geoforai_business_postcode', 'geoforai_business_city', 'geoforai_business_country', 'geoforai_business_phone', 'geoforai_business_email', 'geoforai_business_url', 'geoforai_business_logo', 'geoforai_business_hours', 'geoforai_business_lat', 'geoforai_business_lng', 'geoforai_ai_datause', 'geoforai_ai_imagetraining', 'geoforai_ai_texttraining', 'geoforai_ai_voicetraining', 'geoforai_ai_attribution', 'geoforai_jsonld_article', 'geoforai_jsonld_product', 'geoforai_audit_results');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_geoforai_description', '_geoforai_topics');
DELETE FROM wp_usermeta WHERE meta_key IN ('_geoforai_description', '_geoforai_topics');
DELETE FROM wp_termmeta WHERE meta_key IN ('_geoforai_description', '_geoforai_topics');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_geoforai_description', '_geoforai_topics');

