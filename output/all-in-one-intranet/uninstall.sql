-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('registration', 'limited_email_domains');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('aioi_last_activity_time');
DELETE FROM wp_usermeta WHERE meta_key IN ('aioi_last_activity_time');
DELETE FROM wp_termmeta WHERE meta_key IN ('aioi_last_activity_time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('aioi_last_activity_time');

