-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_synhighlight_process_comments', 'wp_synhighlight_use_theme', 'wp_synhighlight_default_codeblock_title', 'wp_synhighlight_default_lines', 'wp_synhighlight_default_lines_start_with', 'wp_synhighlight_default_container', 'wp_synhighlight_default_capitalize_keywords', 'wp_synhighlight_default_tab_width', 'wp_synhighlight_default_strict_mode', 'wp_synhighlight_default_blockstate', 'wp_synhighlight_doclinks_off', 'wp_synhighlight_filesyntax_on', 'wp_synhighlight_filesyntax_ext', 'wp_synhighlight_disable_editarea', 'wp_synhighlight_styling_type', 'wp_synhighlight_override_css_height', 'wp_synhighlight_filesyntax_dir', 'wp_synhighlight_date');

