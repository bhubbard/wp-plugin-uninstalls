-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('speedox_database_optimization', 'speedox_optimized_image_count', 'speedox_cleaned_db_tables', 'speedox_admin_notice');

