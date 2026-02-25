-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cf7dp_effect', 'cf7dp_show_week', 'cf7dp_monyearmenu', 'cf7dp_date');

