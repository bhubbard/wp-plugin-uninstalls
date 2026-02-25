-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ei_pop_on', 'ei_form_id', 'ei_pop_time');

