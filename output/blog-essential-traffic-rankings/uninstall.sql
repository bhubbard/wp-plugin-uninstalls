-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bpetr_website_is_premium', 'blog traffic and rankings config settings', 'bpetr_property_id', 'bpetr_setting_saved_flash', 'bpetr_is_auth', 'bpetr_username', 'bpetr_token', 'bpetr_timeframe', 'bpetr_ta_all_posts', 'bpetr_tca_all_posts', 'bpetr_channel_filter', 'bpetr_graphMetric', 'bpetr_pp_plan_id', 'bpetr_pp_plan_price', 'bpetr_pp_button_client_id', 'bpetr_pp_skd_url');

