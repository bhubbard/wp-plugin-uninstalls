-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gs_sim_last_object_id');
DELETE FROM wp_options WHERE option_name LIKE 'gs_sim_description_hack_%';

