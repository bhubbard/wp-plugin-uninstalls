-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wootalk_status', 'wootalk_email_notification', 'wootalk_email_logo', 'active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_billing_email', '_billing_first_name', '_billing_last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('_billing_email', '_billing_first_name', '_billing_last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('_billing_email', '_billing_first_name', '_billing_last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_billing_email', '_billing_first_name', '_billing_last_name');

