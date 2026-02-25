-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('extevtcal_date_formatting', 'extevtcal_date_customformat', 'extevtcal_link_position', 'extevtcal_use_css', 'extevtcal_currentday_behavior', 'links_updated_date_format', 'extevtcal_db_version');

