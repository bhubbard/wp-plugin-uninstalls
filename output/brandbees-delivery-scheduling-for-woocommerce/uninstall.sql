-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('brandbees_preparation_type', 'brandbees_global_preparation_time', 'brandbees_cutoff_enabled', 'brandbees_cutoff_order_types', 'brandbees_cutoff_time', 'brandbees_cutoff_timezone', 'brandbees_cutoff_days', 'brandbees_cutoff_same_day', 'brandbees_cutoff_notice_message', 'brandbees_estimate_enabled_product', 'brandbees_estimate_enabled_cart', 'brandbees_estimate_enabled_checkout', 'brandbees_estimate_display_text', 'brandbees_estimate_date_format', 'brandbees_delivery_estimate_date_format_custom', 'brandbees_label_delivery_date', 'brandbees_label_time_slot', 'brandbees_label_estimated_delivery', 'brandbees_label_required_error', 'brandbees_label_unavailable_error', 'brandbees_delivery_schedule', 'brandbees_estimate_date_format_custom', 'active_sitewide_plugins', 'brandbees_db_version', 'brandbees_prep_time_hours', 'brandbees_days_ahead', 'brandbees_estimate_cart');
DELETE FROM wp_options WHERE option_name LIKE 'brandbees_estimate_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('brandbees_preparation_time', '_fulfillment_type', '_delivery_date', '_delivery_time_slot');
DELETE FROM wp_usermeta WHERE meta_key IN ('brandbees_preparation_time', '_fulfillment_type', '_delivery_date', '_delivery_time_slot');
DELETE FROM wp_termmeta WHERE meta_key IN ('brandbees_preparation_time', '_fulfillment_type', '_delivery_date', '_delivery_time_slot');
DELETE FROM wp_commentmeta WHERE meta_key IN ('brandbees_preparation_time', '_fulfillment_type', '_delivery_date', '_delivery_time_slot');

