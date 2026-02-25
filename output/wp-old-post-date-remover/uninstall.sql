-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_old_post_date_remover_settings', 'opdr_days_to_show_date');

