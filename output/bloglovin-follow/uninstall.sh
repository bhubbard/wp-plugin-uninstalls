#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bloglovin_follow_button_code'
wp option delete 'bloglovin_follow_show_at_top'
wp option delete 'bloglovin_follow_show_at_bottom'
wp option delete 'bloglovin_follow_show_on_page'
wp option delete 'bloglovin_follow_show_on_post'
wp option delete 'bloglovin_follow_show_on_home'
wp option delete 'bloglovin_follow_show_on_search'
wp option delete 'bloglovin_follow_show_on_archive'
wp option delete 'bloglovin_follow_margin_top'
wp option delete 'bloglovin_follow_margin_bottom'
wp option delete 'bloglovin_follow_margin_left'
wp option delete 'bloglovin_follow_margin_right'
wp option delete 'bloglovin_follow_excl_post'
wp option delete 'bloglovin_follow_excl_cat'
wp option delete 'bloglovin_follow_css_style'
wp option delete 'bloglovin_follow_css_class'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'bloglovin_follow_show_on_post_type_%'"

