-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wphnp_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_start_dtp', '_end_dtp', '_dtp_zone');
DELETE FROM wp_usermeta WHERE meta_key IN ('_start_dtp', '_end_dtp', '_dtp_zone');
DELETE FROM wp_termmeta WHERE meta_key IN ('_start_dtp', '_end_dtp', '_dtp_zone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_start_dtp', '_end_dtp', '_dtp_zone');

