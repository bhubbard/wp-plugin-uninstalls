-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('genius_ile_domain', 'genius_ile_tsid', 'genius_ile_api_key', 'genius_ile_api_secret', 'genius_ile_api_remind', 'genius_ile_db_version', 'genius_ile_liking', 'genius_ile_dismiss_feedback', 'genius_ile_install_date', 'genius_ile_urls_on_click', 'georiot_tsid', 'georiot_api_key', 'georiot_api_secret', 'georiot_api_remind', 'georiot_preserve_tracking');

