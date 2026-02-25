-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ttwt_privacy_accepted');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_watch_ar_link');
DELETE FROM wp_usermeta WHERE meta_key IN ('_watch_ar_link');
DELETE FROM wp_termmeta WHERE meta_key IN ('_watch_ar_link');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_watch_ar_link');

