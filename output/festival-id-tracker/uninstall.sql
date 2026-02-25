-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('festidtrack_db_version', 'festidtrack_redirect_url', 'festidtrack_redirect_enabled');
DELETE FROM wp_options WHERE option_name LIKE 'festidtrack_total_calls_%';
DELETE FROM wp_options WHERE option_name LIKE 'festidtrack_unique_ids_%';

