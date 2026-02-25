-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nc_bb_sm_error');
DELETE FROM wp_options WHERE option_name LIKE '_nc_bb_sm_front-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_nc_bb_sm_class_name', '_nc_bb_sm_definition', '_nc_bb_sm_front');
DELETE FROM wp_usermeta WHERE meta_key IN ('_nc_bb_sm_class_name', '_nc_bb_sm_definition', '_nc_bb_sm_front');
DELETE FROM wp_termmeta WHERE meta_key IN ('_nc_bb_sm_class_name', '_nc_bb_sm_definition', '_nc_bb_sm_front');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_nc_bb_sm_class_name', '_nc_bb_sm_definition', '_nc_bb_sm_front');

