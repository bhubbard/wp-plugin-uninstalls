-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('solar_calc_rating_notice_shown', 'solar_calc_install_date', 'solarrechner_einspeiseverguetung', 'solarrechner_qmkwp', 'solarrechner_degradation', 'solarrechner_kosten_kwp', 'solarrechner_spezifischerErtrag', 'solarrechner_wartung', 'solarrechner_batteriekosten', 'solarrechner_strompreis_steigerung', 'solarrechner_co2_faktor', 'solarrechner_autarkie_begrenzung', 'solarrechner_eigenverbrauch_prozent', 'solarrechner_leistungs_begrenzung', 'solarrechner_version');

