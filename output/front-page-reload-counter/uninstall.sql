-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('frontpagereloadcounter_visit_count', 'frontpagereloadcounter_last_visit', 'frontpagereloadcounter_paused', 'frontpagereloadcounter_db_version');

