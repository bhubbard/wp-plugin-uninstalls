-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mtm_admin_notices', 'mtm_version', 'mtm_data', 'mtm_custom', 'mtm_shiny_update_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mtm_dismissed_notices', 'mtm_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mtm_dismissed_notices', 'mtm_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mtm_dismissed_notices', 'mtm_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mtm_dismissed_notices', 'mtm_data');

