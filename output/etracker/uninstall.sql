-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('etracker_settings', 'active_sitewide_plugins', 'etracker_db_version', 'etracker_notice_enable_integrated_reporting', 'etracker_customer_polling');

