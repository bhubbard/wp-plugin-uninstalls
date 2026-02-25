-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dpdotnet-ga-profile-id', 'dpdotnet-ga-cron-freq');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('danp-dot-net-ga-page-views');
DELETE FROM wp_usermeta WHERE meta_key IN ('danp-dot-net-ga-page-views');
DELETE FROM wp_termmeta WHERE meta_key IN ('danp-dot-net-ga-page-views');
DELETE FROM wp_commentmeta WHERE meta_key IN ('danp-dot-net-ga-page-views');

