-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('Kloudymail', 'widget_kloudymail', 'kmlg_db_version');

