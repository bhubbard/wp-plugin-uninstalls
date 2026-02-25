-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sucuriscan_online_users');
DELETE FROM wp_options WHERE option_name LIKE '%_paged';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sucuriscan_preferred_theme');
DELETE FROM wp_usermeta WHERE meta_key IN ('sucuriscan_preferred_theme');
DELETE FROM wp_termmeta WHERE meta_key IN ('sucuriscan_preferred_theme');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sucuriscan_preferred_theme');

