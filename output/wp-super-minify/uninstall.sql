-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpsmy_minified_files', 'wpsmy_review_notice', 'wpsmy_activation_date', 'wpsmy_plugin_version', 'wpsmy_combine_js', 'wpsmy_combine_css');

