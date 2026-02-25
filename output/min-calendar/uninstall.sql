-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mincalendar-options', 'mincalendar');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('year', 'month', '_old_MC_unit_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('year', 'month', '_old_MC_unit_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('year', 'month', '_old_MC_unit_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('year', 'month', '_old_MC_unit_id');

