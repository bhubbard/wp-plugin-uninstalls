-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dt_atp_status_enabled', 'dt_atp_textbox', 'dt_atp_currently_active', 'dt_atp_last_update_time', 'dt_atp_number_of_tweets', 'dt_atp_number_of_saved_tweets', 'dt_atp_cron_time', 'dt_atp_textarea_style', 'dt_atp_customer_key', 'dt_atp_customer_secret', 'dt_atp_access_token', 'dt_atp_access_token_secret', 'dt_atp_radio', 'dt_atp_wp_cron_enabled', 'dt_atp_wrapper_class', 'dt_atp_date_format', 'schedule');

