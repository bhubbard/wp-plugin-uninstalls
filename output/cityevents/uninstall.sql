-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cityevents_default_city', 'cityevents_default_limit', 'cityevents_default_cache_minutes', 'cityevents_default_date_format');

