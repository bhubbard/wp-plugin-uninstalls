-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rg4wp_ignoredomains', 'rg4wp_js', 'rg4wp_pulse', 'rg4wp_apikey', 'rg4wp_noadmintracking', 'rg4wp_js_ignore3rdpartyerrors', 'rg4wp_js_tags', 'rg4wp_usertracking', 'rg4wp_status', 'rg4wp_tags', 'rg4wp_404s', 'rg4wp_async');

