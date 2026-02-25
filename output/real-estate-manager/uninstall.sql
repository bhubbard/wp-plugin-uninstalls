-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rem_all_settings', 'rem_pending_users', 'rem_role_isset', 'landz_redux_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rem_property_area', 'rem_property_type', 'rem_property_address', 'rem_property_latitude', 'rem_property_longitude', 'rem_property_city', 'rem_property_country', 'rem_property_purpose', 'rem_property_status', 'rem_property_bathrooms', 'rem_property_bedrooms', 'first_name', 'last_name', 'rem_property_images', 'rem_user_tagline', 'rem_facebook_url', 'rem_twitter_url', 'rem_googleplus_url', 'rem_linkedin_url', 'rem_property_detail_cbs', 'rem_user_skills', 'rem_agent_meta_image', 'rem_user_contact_sc', 'description', 'rem_property_price', 'rem_property_video', 'rem_post_title');
DELETE FROM wp_usermeta WHERE meta_key IN ('rem_property_area', 'rem_property_type', 'rem_property_address', 'rem_property_latitude', 'rem_property_longitude', 'rem_property_city', 'rem_property_country', 'rem_property_purpose', 'rem_property_status', 'rem_property_bathrooms', 'rem_property_bedrooms', 'first_name', 'last_name', 'rem_property_images', 'rem_user_tagline', 'rem_facebook_url', 'rem_twitter_url', 'rem_googleplus_url', 'rem_linkedin_url', 'rem_property_detail_cbs', 'rem_user_skills', 'rem_agent_meta_image', 'rem_user_contact_sc', 'description', 'rem_property_price', 'rem_property_video', 'rem_post_title');
DELETE FROM wp_termmeta WHERE meta_key IN ('rem_property_area', 'rem_property_type', 'rem_property_address', 'rem_property_latitude', 'rem_property_longitude', 'rem_property_city', 'rem_property_country', 'rem_property_purpose', 'rem_property_status', 'rem_property_bathrooms', 'rem_property_bedrooms', 'first_name', 'last_name', 'rem_property_images', 'rem_user_tagline', 'rem_facebook_url', 'rem_twitter_url', 'rem_googleplus_url', 'rem_linkedin_url', 'rem_property_detail_cbs', 'rem_user_skills', 'rem_agent_meta_image', 'rem_user_contact_sc', 'description', 'rem_property_price', 'rem_property_video', 'rem_post_title');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rem_property_area', 'rem_property_type', 'rem_property_address', 'rem_property_latitude', 'rem_property_longitude', 'rem_property_city', 'rem_property_country', 'rem_property_purpose', 'rem_property_status', 'rem_property_bathrooms', 'rem_property_bedrooms', 'first_name', 'last_name', 'rem_property_images', 'rem_user_tagline', 'rem_facebook_url', 'rem_twitter_url', 'rem_googleplus_url', 'rem_linkedin_url', 'rem_property_detail_cbs', 'rem_user_skills', 'rem_agent_meta_image', 'rem_user_contact_sc', 'description', 'rem_property_price', 'rem_property_video', 'rem_post_title');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'rem_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'rem_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'rem_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'rem_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'rem_property_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'rem_property_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'rem_property_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'rem_property_%';

