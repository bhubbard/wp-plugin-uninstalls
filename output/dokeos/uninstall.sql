-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dwc_licencekey', 'dwc_licencename');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_dwc_logs', '_dokeos_debug_process', '_dokeos_debug_userexists', '_dokeos_debug_createuser', '_dokeos_debug_participation', '_dwc_liendokeos', '_dokeos_abo_etat', '_dokeos_abo_details');
DELETE FROM wp_usermeta WHERE meta_key IN ('_dwc_logs', '_dokeos_debug_process', '_dokeos_debug_userexists', '_dokeos_debug_createuser', '_dokeos_debug_participation', '_dwc_liendokeos', '_dokeos_abo_etat', '_dokeos_abo_details');
DELETE FROM wp_termmeta WHERE meta_key IN ('_dwc_logs', '_dokeos_debug_process', '_dokeos_debug_userexists', '_dokeos_debug_createuser', '_dokeos_debug_participation', '_dwc_liendokeos', '_dokeos_abo_etat', '_dokeos_abo_details');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_dwc_logs', '_dokeos_debug_process', '_dokeos_debug_userexists', '_dokeos_debug_createuser', '_dokeos_debug_participation', '_dwc_liendokeos', '_dokeos_abo_etat', '_dokeos_abo_details');

