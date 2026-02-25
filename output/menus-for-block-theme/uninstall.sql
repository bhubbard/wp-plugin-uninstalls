-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mfbt_add_theme_support_menu', 'mfbt_show_customizer', 'mfbt_disable_files_editor', 'mfbt_show_reusable_blocks', 'mfbt_show_navigation_menu', 'mfbt_show_templates', 'mfbt_show_template_parts');

