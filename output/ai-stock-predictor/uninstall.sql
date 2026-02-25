-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aistpr_api_settings', 'aistpr_prediction_settings', 'aistpr_general_settings', 'aistpr_notification_settings', 'woocommerce_notify_low_stock_amount', 'aistpr_default_lead_time', 'aistpr_recent_predictions', 'aistpr_stock_statistics', 'aistpr_total_products');
DELETE FROM wp_options WHERE option_name LIKE 'aistpr_prediction_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('aistpr_predictions_per_page', '_aistpr_lead_time');
DELETE FROM wp_usermeta WHERE meta_key IN ('aistpr_predictions_per_page', '_aistpr_lead_time');
DELETE FROM wp_termmeta WHERE meta_key IN ('aistpr_predictions_per_page', '_aistpr_lead_time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('aistpr_predictions_per_page', '_aistpr_lead_time');

