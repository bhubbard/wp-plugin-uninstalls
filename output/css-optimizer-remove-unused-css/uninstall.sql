-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cssoptimizer_options_enable', 'cssoptimizer_options_token', 'cssoptimizer_options_generateccss', 'cssoptimizer_options_safelist', 'cssoptimizer_options_limitpagepost', 'cssoptimizer_options_exclude', 'cssoptimizer_options_exclude_css', 'cssoptimizer_cache_clean', 'cssoptimizer_activation_redirect', 'cssoptimizer_first_time_guide', 'cssop_ccss_queue');

