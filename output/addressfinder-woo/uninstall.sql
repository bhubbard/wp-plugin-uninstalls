-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('af-plugin-version', 'af-key', 'af-key-au', 'af-debug', 'af-widget-enabled', 'af-widget-options', 'af-default-country', 'af-au-widget-options', 'af-au-widget-pobox', 'af-nz-widget-options', 'af-nz-widget-pobox', 'af-ev-widget-enabled', 'af-ev-widget-public', 'af-ev-widget-role', 'af-ev-widget-disposable', 'af-ev-widget-unverified', 'af-ev-widget-rules', 'af-pv-widget-enabled', 'af-pv-widget-default-country', 'af-pv-widget-allowed-countries', 'af-pv-widget-non-mobile', 'af-pv-widget-disallowed-country', 'af-pv-widget-unverified', 'af-pv-widget-format-number', 'af-pv-widget-rules');

