#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'multilingual_text_languages'
wp option delete 'multilingual_text_show_single'
wp option delete 'multilingual_text_flags_dir'
wp option delete 'multilingual_text_title_order'
wp option delete 'multilingual_text_flag_order'
wp option delete 'multilingual_text_flags_where'

