-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('winden_dplugins_editor', 'winden_dplugins_cache', 'winden_dplugins_wizzard_state', 'winden_v4_notice_dismissed', 'winden_dplugins_options', 'winden_dplugins_clear_cache_flag', 'winden_option_name', 'winden_dplugins_breakpoint_indicator_enabled', 'winden_cache_status', 'winden_split_mode', 'winden_post_classes_index', 'winden_crawled_classes', 'winden_last_crawl_time', 'winden_needs_recompile', 'bricks_global_settings', 'bricks_color_palette', 'bricks_breakpoints', 'oxygen_vsb_global_colors', 'winden_compiled_css_mtime');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_funculo_block_php', '_funculo_block_js', '_funculo_symbol_php');
DELETE FROM wp_usermeta WHERE meta_key IN ('_funculo_block_php', '_funculo_block_js', '_funculo_symbol_php');
DELETE FROM wp_termmeta WHERE meta_key IN ('_funculo_block_php', '_funculo_block_js', '_funculo_symbol_php');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_funculo_block_php', '_funculo_block_js', '_funculo_symbol_php');

