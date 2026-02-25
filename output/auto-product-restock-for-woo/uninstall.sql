-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ncwcapr_restock_display_position', 'ncwcapr_restock_cron_schedule', 'ncwcapr_restock_enable_logging');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_restock_date', '_restock_quantity', '_restock_recurrence_type', '_restock_recurrence_time', '_last_recurring_restock', '_restock_day_of_month', '_restock_recurrence_enabled', '_stock_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('_restock_date', '_restock_quantity', '_restock_recurrence_type', '_restock_recurrence_time', '_last_recurring_restock', '_restock_day_of_month', '_restock_recurrence_enabled', '_stock_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('_restock_date', '_restock_quantity', '_restock_recurrence_type', '_restock_recurrence_time', '_last_recurring_restock', '_restock_day_of_month', '_restock_recurrence_enabled', '_stock_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_restock_date', '_restock_quantity', '_restock_recurrence_type', '_restock_recurrence_time', '_last_recurring_restock', '_restock_day_of_month', '_restock_recurrence_enabled', '_stock_status');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_restock_day_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_restock_day_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_restock_day_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_restock_day_%';

