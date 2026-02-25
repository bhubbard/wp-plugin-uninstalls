-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('__templateberg_do_redirect', '__gutentor_do_redirect', 'templateberg_edt_free', 'templateberg_edt_max', 'templateberg_gt_max', 'templateberg_gt_total', 'templateberg_tt_max', 'templateberg_tt_total');
DELETE FROM wp_options WHERE option_name LIKE 'templateberg_edt_%';
DELETE FROM wp_options WHERE option_name LIKE 'templateberg_tj_%';
DELETE FROM wp_options WHERE option_name LIKE '%_max';
DELETE FROM wp_options WHERE option_name LIKE '%_total';
DELETE FROM wp_options WHERE option_name LIKE 'templateberg_gt_%';
DELETE FROM wp_options WHERE option_name LIKE 'templateberg_tt_%';
DELETE FROM wp_options WHERE option_name LIKE 'templateberg_ct_p_%';
DELETE FROM wp_options WHERE option_name LIKE 'templateberg_gt_p_%';
DELETE FROM wp_options WHERE option_name LIKE 'templateberg_tt_p_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('templateberg-gutentor-imd-tmls');
DELETE FROM wp_usermeta WHERE meta_key IN ('templateberg-gutentor-imd-tmls');
DELETE FROM wp_termmeta WHERE meta_key IN ('templateberg-gutentor-imd-tmls');
DELETE FROM wp_commentmeta WHERE meta_key IN ('templateberg-gutentor-imd-tmls');

