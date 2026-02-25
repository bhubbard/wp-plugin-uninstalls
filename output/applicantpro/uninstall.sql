-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('applicantpro_api', 'show_job_location', 'header_bg_color', 'header_title_color', 'button_bg_color', 'button_text_color', 'listing_subtitle_color', 'applicant_social_media_enable', 'employment_additional', 'department_additional', 'close_date_additional', 'show_pay_information', 'applicant_twitter_url', 'applicant_facebook_url', 'applicant_linkedin_url', 'applicant_instagram_url', 'listing_link_color', 'listing_hover_color', 'map_enable', 'cityzip_filter', 'employment_filter', 'country_filter', 'classification_filter', 'map_active_color', 'map_inactive_color', 'state_label', 'classification_label', 'apppro_data');
DELETE FROM wp_options WHERE option_name LIKE 'applicantpro_token_%';

