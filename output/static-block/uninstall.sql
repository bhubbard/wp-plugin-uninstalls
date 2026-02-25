-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tr_start_date', 'tr_start_date_hour', 'tr_start_date_minute', 'tr_end_date_hour"', 'tr_end_date_minute"', 'tr_end_date', 'tr_end_date_hour', 'tr_end_date_minute');
DELETE FROM wp_usermeta WHERE meta_key IN ('tr_start_date', 'tr_start_date_hour', 'tr_start_date_minute', 'tr_end_date_hour"', 'tr_end_date_minute"', 'tr_end_date', 'tr_end_date_hour', 'tr_end_date_minute');
DELETE FROM wp_termmeta WHERE meta_key IN ('tr_start_date', 'tr_start_date_hour', 'tr_start_date_minute', 'tr_end_date_hour"', 'tr_end_date_minute"', 'tr_end_date', 'tr_end_date_hour', 'tr_end_date_minute');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tr_start_date', 'tr_start_date_hour', 'tr_start_date_minute', 'tr_end_date_hour"', 'tr_end_date_minute"', 'tr_end_date', 'tr_end_date_hour', 'tr_end_date_minute');

