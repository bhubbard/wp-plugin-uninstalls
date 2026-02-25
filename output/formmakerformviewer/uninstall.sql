-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ev_purge', 'ev_fields_counter', 'ev_fields_counter_calculator', 'widget_formviewer');

