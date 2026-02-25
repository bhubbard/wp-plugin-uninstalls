-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bilbok_cf7bm_options', 'bilbok_cf7bm_rate_limited', 'bilbok_cf7bm_daily_usage');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_contact_id', '_email', '_from_email', '_posted_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_contact_id', '_email', '_from_email', '_posted_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_contact_id', '_email', '_from_email', '_posted_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_contact_id', '_email', '_from_email', '_posted_data');

