-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('amcharts_options', 'amcharts_activated', 'amcharts_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_amcharts_resources', '_amcharts_html', '_amcharts_javascript', '_amcharts_slug');
DELETE FROM wp_usermeta WHERE meta_key IN ('_amcharts_resources', '_amcharts_html', '_amcharts_javascript', '_amcharts_slug');
DELETE FROM wp_termmeta WHERE meta_key IN ('_amcharts_resources', '_amcharts_html', '_amcharts_javascript', '_amcharts_slug');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_amcharts_resources', '_amcharts_html', '_amcharts_javascript', '_amcharts_slug');

