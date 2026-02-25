-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ipanorama_db_version', 'ipanorama_activated', 'ipanorama_settings', 'default_post_edit_rows');

