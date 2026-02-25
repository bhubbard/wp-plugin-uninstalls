-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('icds_connection', 'icds_version', 'icds_savedtemplates', 'icds_formregistrations', 'icds_binding', 'icds_userBinding');

