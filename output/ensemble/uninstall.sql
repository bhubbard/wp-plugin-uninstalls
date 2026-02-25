-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ensemble_installed');
DELETE FROM wp_options WHERE option_name LIKE '%_db_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ensemble-class', 'ensemble-start-date', 'ensemble-end-date', 'ensemble-city', 'ensemble-directors', 'ensemble-instructors');
DELETE FROM wp_usermeta WHERE meta_key IN ('ensemble-class', 'ensemble-start-date', 'ensemble-end-date', 'ensemble-city', 'ensemble-directors', 'ensemble-instructors');
DELETE FROM wp_termmeta WHERE meta_key IN ('ensemble-class', 'ensemble-start-date', 'ensemble-end-date', 'ensemble-city', 'ensemble-directors', 'ensemble-instructors');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ensemble-class', 'ensemble-start-date', 'ensemble-end-date', 'ensemble-city', 'ensemble-directors', 'ensemble-instructors');

