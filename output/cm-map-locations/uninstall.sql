-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rewrite_rules', 'sidebars_widgets', 'cmmrm_permalink_prefix', 'active_sitewide_plugins', 'cmloc_AddWizardMenu', 'cmloc_index_menu_enable', 'cmloc_google_maps_app_key', 'cmlocf_refresh_404_permalinks');
DELETE FROM wp_options WHERE option_name LIKE '%-registration-skipped';
DELETE FROM wp_options WHERE option_name LIKE '%-registered';
DELETE FROM wp_options WHERE option_name LIKE '%-was-registered';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attached_file');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attached_file');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attached_file');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attached_file');

