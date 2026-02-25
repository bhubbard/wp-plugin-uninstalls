-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('PLAYCZ_topRadios_widget', 'PLAYCZ_topRadios_widget_bck');

