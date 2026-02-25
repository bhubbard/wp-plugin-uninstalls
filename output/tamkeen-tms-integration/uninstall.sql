-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tamkeen_tenant_id', 'tamkeen_grid_items_per_row', 'tamkeen_api_key', 'tamkeen_locale');

