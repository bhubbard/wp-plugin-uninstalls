-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aitch_ref_settings', 'aitchref_urls', 'aitchref_filters_absolute', 'aitchref_filters_relative');

