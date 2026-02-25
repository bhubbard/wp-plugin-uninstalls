-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('redcase_key', 'd_daily_deals');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('deals_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('deals_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('deals_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('deals_data');

