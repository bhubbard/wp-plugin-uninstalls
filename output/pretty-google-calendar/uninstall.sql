-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pgcal_replacement_notice_dismissed', 'pgcal_settings');

