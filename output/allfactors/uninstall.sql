-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('allfactors_hostname', 'allfactors_script', 'allfactors_update');

