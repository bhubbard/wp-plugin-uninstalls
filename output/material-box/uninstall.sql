-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('materialbox_selector', 'materialbox_class', 'materialbox_in_duration', 'materialbox_out_duration');

