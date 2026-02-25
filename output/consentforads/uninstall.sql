-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('consent_for_ads_terms_accepted', 'consent_for_ads_enable_debug', 'consent_for_ads_version');

