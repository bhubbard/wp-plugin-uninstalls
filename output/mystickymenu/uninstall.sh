#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mysticky_option_welcomebar'
wp option delete 'hide_mystickymenu_cta'
wp option delete 'mysticky_option_name'
wp option delete 'poptin_id'
wp option delete 'hide_msmrecommended_plugin'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_hide_review_box'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_show_review_box_after'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_hide_upgrade_box'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_show_upgrade_box_after'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_hide_affiliate_box'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_show_affiliate_box_after'"
wp option delete 'get_mystickybar_page_views'
wp option delete 'my-sticky-menu_hide_review_box'
wp option delete 'my-sticky-menu_show_review_box_after'
wp option delete 'mystickymenu_intro_box'
wp option delete 'mystickymenu-welcomebars'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'mysticky_option_welcomebar%'"
wp option delete 'msm_redirection'
wp option delete 'has_sticky_header_old_version'
wp option delete 'sticky_header_status'
wp option delete 'update_mysticky_version_2_6'
wp option delete 'update_mysticky_version_2_5_7'
wp option delete 'msb_cl_widget_id_exists'

