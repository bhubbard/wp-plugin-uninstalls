-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ycve_timezone');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_yc_exp_type', '_yc_exp_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('_yc_exp_type', '_yc_exp_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('_yc_exp_type', '_yc_exp_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_yc_exp_type', '_yc_exp_date');

