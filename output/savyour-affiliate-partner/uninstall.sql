-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('savap_auth_secret', 'savap_secret_work', 'savap_api_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_thankyou_action_done', 'savyour_cancellation_reason');
DELETE FROM wp_usermeta WHERE meta_key IN ('_thankyou_action_done', 'savyour_cancellation_reason');
DELETE FROM wp_termmeta WHERE meta_key IN ('_thankyou_action_done', 'savyour_cancellation_reason');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_thankyou_action_done', 'savyour_cancellation_reason');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'savap-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'savap-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'savap-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'savap-%';

