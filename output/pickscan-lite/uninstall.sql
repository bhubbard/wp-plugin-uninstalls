-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ps_lite_param', 'pickli_params');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_global_unique_id', 'psl_zone', 'psl_allee', 'psl_emplacement', 'psl_etagere');
DELETE FROM wp_usermeta WHERE meta_key IN ('_global_unique_id', 'psl_zone', 'psl_allee', 'psl_emplacement', 'psl_etagere');
DELETE FROM wp_termmeta WHERE meta_key IN ('_global_unique_id', 'psl_zone', 'psl_allee', 'psl_emplacement', 'psl_etagere');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_global_unique_id', 'psl_zone', 'psl_allee', 'psl_emplacement', 'psl_etagere');

