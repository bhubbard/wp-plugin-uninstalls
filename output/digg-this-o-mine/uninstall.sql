-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dtom_add_to_page', 'dtom_add_to_full_post', 'dtom_bgcolor', 'dtom_skin', 'dtom_open_new_window');

