-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elekzene_cb', 'sarkok_cb', 'kozep_cb', 'futok_cb', 'csodagif_cb');

