-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_transient_timeout__mailster_send_period_timeout');
DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout__mailster_send_period_timeout_%';
DELETE FROM wp_options WHERE option_name LIKE '_mailster_send_period_timeout_%';
DELETE FROM wp_options WHERE option_name LIKE '_mailster_send_period_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mailster-multismtp');
DELETE FROM wp_usermeta WHERE meta_key IN ('mailster-multismtp');
DELETE FROM wp_termmeta WHERE meta_key IN ('mailster-multismtp');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mailster-multismtp');

