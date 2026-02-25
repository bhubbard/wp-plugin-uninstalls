-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kblog_mathjax_force_load', 'kblog_mathjax_latex_inline', 'kblog_mathjax_use_wplatex_syntax', 'kblog_mathjax_use_cdn', 'kblog_mathjax_custom_location', 'kblog_mathjax_config');

