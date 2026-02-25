-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hebdate_sunset', 'hebdate_lang', 'hebdate_hide_alafim', 'hebdate_format', 'hebdate_format_custom', 'latitude', 'longitude');

