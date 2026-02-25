-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mll_lazyload_options_delay', 'mll_lazyload_options_fade', 'mll_lazyload_options_fade_duration');

