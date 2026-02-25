-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kpcode_version_wp', 'kpcode_longurlmaker_version', 'c_version_wp');

