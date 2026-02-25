-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('l2h_options', 'l2h_upgrade_options', 'latex2html_mathjax_custom_config', 'latex_chinese', 'latex_single_show', 'latex2html_mathjax_custom_cdn', 'latex_preamble', 'latex_style');

