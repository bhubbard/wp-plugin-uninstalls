-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sp_suggest_subject', 'sp_suggest_message', 'sp_suggest_status', 'sp_cron_event', 'sp_custom_time', 'suggest_subject');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_regular_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_regular_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_regular_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_regular_price');

