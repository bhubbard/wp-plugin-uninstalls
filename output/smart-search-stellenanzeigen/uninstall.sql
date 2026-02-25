-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stellenanzeigen_jobs_city', 'stellenanzeigen_jobs_regions', 'stellenanzeigen_jobs_regions_coordinates');

