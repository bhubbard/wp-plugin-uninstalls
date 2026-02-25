-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('deensimc_never_show_notice', 'marquee_addons_widgets');
DELETE FROM wp_options WHERE option_name LIKE 'deensimc_rate_us_%';

