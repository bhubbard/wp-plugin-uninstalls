#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_synhighlight_process_comments'
wp option delete 'wp_synhighlight_use_theme'
wp option delete 'wp_synhighlight_default_codeblock_title'
wp option delete 'wp_synhighlight_default_lines'
wp option delete 'wp_synhighlight_default_lines_start_with'
wp option delete 'wp_synhighlight_default_container'
wp option delete 'wp_synhighlight_default_capitalize_keywords'
wp option delete 'wp_synhighlight_default_tab_width'
wp option delete 'wp_synhighlight_default_strict_mode'
wp option delete 'wp_synhighlight_default_blockstate'
wp option delete 'wp_synhighlight_doclinks_off'
wp option delete 'wp_synhighlight_filesyntax_on'
wp option delete 'wp_synhighlight_filesyntax_ext'
wp option delete 'wp_synhighlight_disable_editarea'
wp option delete 'wp_synhighlight_styling_type'
wp option delete 'wp_synhighlight_override_css_height'
wp option delete 'wp_synhighlight_filesyntax_dir'
wp option delete 'wp_synhighlight_date'

