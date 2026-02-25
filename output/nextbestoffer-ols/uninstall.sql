-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('NextBestOffer_OLS_use_case', 'NextBestOffer_OLS_api_key', 'NextBestOffer_OLS_max_rule_length', 'NextBestOffer_OLS_min_support', 'NextBestOffer_OLS_min_confidence', 'NextBestOffer_OLS_training_mode', 'NextBestOffer_OLS_batch_size', 'NextBestOffer_OLS_email_recommendations', 'NextBestOffer_OLS_recom_mode', 'NextBestOffer_OLS_selected_partial', 'NextBestOffer_OLS_logs', 'NextBestOffer_OLS_training_status');
DELETE FROM wp_options WHERE option_name LIKE 'NextBestOffer_OLS_temporary_recommendations%';

