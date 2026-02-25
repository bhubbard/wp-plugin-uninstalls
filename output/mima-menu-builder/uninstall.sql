-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mimamebu_active_currencies', 'mimamebu_active_languages', 'mimamebu_screensaver', 'mimamebu_features', 'mimamebu_front_theme', 'mimamebu_ss_timeout_min', 'mimamebu_active_theme', 'mimamebu_default_currency');

