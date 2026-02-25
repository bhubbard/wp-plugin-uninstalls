-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mwd_mcer_options', 'mwd_mcer_latest_fxrates', 'mwd_mcer_fxcurrencies', 'widget_mfr', 'mwd_mcer_fxrates', 'mwd_mcer_fxcurrencies');

