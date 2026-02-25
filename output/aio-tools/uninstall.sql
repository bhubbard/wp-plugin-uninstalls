-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('w2w_options', 'active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('w2w_dismissed_notices');
DELETE FROM wp_usermeta WHERE meta_key IN ('w2w_dismissed_notices');
DELETE FROM wp_termmeta WHERE meta_key IN ('w2w_dismissed_notices');
DELETE FROM wp_commentmeta WHERE meta_key IN ('w2w_dismissed_notices');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dismissed_notices';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dismissed_notices';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dismissed_notices';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dismissed_notices';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%';

