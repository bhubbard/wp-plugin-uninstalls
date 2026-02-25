-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('genius_ale_domain', 'genius_ale_tsid', 'genius_ale_api_key', 'genius_ale_api_secret', 'genius_ale_api_remind', 'genius_ale_preserve_tracking', 'genius_ale_urls_on_click', 'genius_ale_db_version', 'genius_ale_liking', 'genius_ale_dismiss_feedback', 'genius_ale_install_date', 'Test Option', 'georiot_tsid', 'georiot_api_key', 'georiot_api_secret', 'georiot_api_remind', 'georiot_preserve_tracking');

