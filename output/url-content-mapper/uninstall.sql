-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('urlcoma_mapper_data');
DELETE FROM wp_options WHERE option_name LIKE 'urlcoma_mapper_data_backup_%';

