-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qcldichartcovidAL', 'qcldichartcovidCC', 'qcldichartcovidUS', 'qcldichartcovidCH', 'setUpd', 'qcldcovid19_options');

