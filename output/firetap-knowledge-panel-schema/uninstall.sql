-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kpsp_org_logo', 'kpsp_business_type', 'kpsp_org_name', 'kpsp_org_url', 'kpsp_org_phone', 'kpsp_org_contact_type', 'kpsp_org_language', 'kpsp_facebook', 'kpsp_instagram', 'kpsp_linkedin', 'kpsp_twitter', 'kpsp_youtube', 'kpsp_tiktok', 'kpsp_google_api_key', 'kpsp_google_place_id', 'kpsp_enable_reviews', 'kpsp_services_csv', 'kpsp_locations', 'kpsp_faq_items', 'kpsp_weekly_hours', 'kpsp_special_hours', 'kpsp_products_rows', 'kpsp_courses_rows', 'kpsp_faq_urls', 'kpsp_products_urls', 'kpsp_courses_urls');

