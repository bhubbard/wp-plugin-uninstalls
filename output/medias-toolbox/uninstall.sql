-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_medias_toolbox_renamer', '_medias_toolbox_cleanup');

