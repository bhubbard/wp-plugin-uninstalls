-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tickzo_options', 'tickzo_default_categories_inserted', 'tickzo_pro_migration_version', 'tickzo_ticket_schema_version', 'tickzo_ticket_numbers_backfilled', 'tickzo_settings', 'tickzo_version', 'tickzo_category_db_error');

