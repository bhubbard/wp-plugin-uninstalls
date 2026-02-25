-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aiowpu_db_version', 'aiowpu_disable_unnecessary_features_options', 'aiowpu_featured_image_id', 'aiowpu_database_type', 'aiowpu_database_version');
DELETE FROM wp_options WHERE option_name LIKE 'aiowpu_enabled_%';

