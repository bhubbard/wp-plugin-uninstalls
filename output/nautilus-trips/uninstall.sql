-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nautilus_trips_api_key', 'nautilus_trips_admin_email', 'nautilus_trips_ships', 'nautilus_trips_years', 'nautilus_trips_months', 'nautilus_trips_destinations', 'nautilus_trips_page_id');

