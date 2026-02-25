#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'enh_cats_version'
wp option delete 'enh_cats_show_symbol'
wp option delete 'enh_cats_hide_symbol'
wp option delete 'enh_cats_no_child_symbol'
wp option delete 'enh_cats_effect'
wp option delete 'enh_cats_show_count'
wp option delete 'enh_cats_show_rss'
wp option delete 'enh_cats_hide_empty'
wp option delete 'enh_cats_button_before_link'

