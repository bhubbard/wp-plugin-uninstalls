-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('amwnlogos_name', 'amwnlogos_start_date', 'amwnlogos_end_date', 'amwnlogos_repeat', 'amwnlogos_logo_holder', 'amwnlogos_replacement_logo', 'amwnlogos_replacement_logo_retina', 'amwnlogos_show_credit');

