-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('appscenic_webhook_secret');
DELETE FROM wp_options WHERE option_name LIKE '%_option';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('appscenic_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('appscenic_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('appscenic_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('appscenic_id');

