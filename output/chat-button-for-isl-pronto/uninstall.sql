-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dd_isl_pronto_scripturl', 'dd_isl_pronto_imagepath', 'dd_isl_pronto_offlineurl', 'dd_isl_pronto_domain', 'dd_isl_pronto_filter', 'dd_isl_pronto_stayontop', 'dd_isl_pronto_showall', 'dd_isl_pronto_position');
DELETE FROM wp_options WHERE option_name LIKE 'dd_isl_pronto_%';

