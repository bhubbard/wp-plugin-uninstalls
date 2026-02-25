-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mrr_setting_zomato_apikey', 'mrr_setting_zomato_restid', 'mrr_setting_google_apikey', 'mrr_setting_google_placeid', 'mrr_setting_display_sortorder', 'mrr_setting_display_maxdisplayreviews', 'mrr_setting_display_minrating', 'mrr_setting_display_maxwords', 'mrr_setting_general_polltime', 'mrr_setting_general_category', 'mrr_setting_general_maxfetchreviews', 'mrr_setting_reviews');

