-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('SWV_options', 'version_major', 'version_minor', 'version_revision', 'version_build', 'TextBefore', 'HTMLCodeBefore', 'HTMLCodeAfter', 'nombre', 'RAZ_Num');

