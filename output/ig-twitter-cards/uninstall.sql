-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%-options';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ig_tc_notices', '_ig_tc_mb');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ig_tc_notices', '_ig_tc_mb');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ig_tc_notices', '_ig_tc_mb');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ig_tc_notices', '_ig_tc_mb');

