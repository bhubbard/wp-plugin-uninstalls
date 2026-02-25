-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sa_site_id', 'sa_review_page_code', 'sa_thankyou_code', 'sa_seal_code', 'sa_step2_status', 'sa_api_token', 'sa_step2b_status', 'sa_survey_token', 'sa_step_progress', 'sa_step1_status', 'sa_step3_status', 'sa_step4_status', 'sa_step5_status', 'sa_step6_status', 'sa_survey_status', 'sa_days_to_delivery', 'sa_seal_status', 'sa_seal_status2', 'sa_seal_excluded', 'sa_rp_status', 'sa_rotating_widget_status', 'sa_rotating_widget_code', 'sa_pwidgets_status', 'sa_cstars_status', 'sa_product_stars_code', 'sa_product_widget_code', 'sa_category_code', 'sa_category_script', 'sa_domain', 'rp_already_exists', 'sa_pf_history', 'sa_feed_gtin');

