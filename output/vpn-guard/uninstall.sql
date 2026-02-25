-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%enabled';
DELETE FROM wp_options WHERE option_name LIKE '%installed_on';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%review_dismissed';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%review_dismissed';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%review_dismissed';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%review_dismissed';

