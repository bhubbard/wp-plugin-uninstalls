#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dynco_manager_role_option'
wp option delete 'dynco_support_svg_option'
wp option delete 'dynco_meta_information_option'
wp option delete 'dynco_remove_generator_filter_option'
wp option delete 'dynco_disallow_file_edit_option'
wp option delete 'dynco_remove_dashboard_widgets_option'
wp option delete 'dynco_added_dashboard_widgets_option'
wp option delete 'dynco_mapped_domains_redirect_option'
wp option delete 'dynco_extra_shortcodes_option'
wp option delete 'dynco_search_all_option'
wp option delete 'dynco_suppress_vc_update_alert_option'
wp option delete 'dynco_suppress_auto_update_option'
wp option delete 'dynco_hide_admin_bar_option'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dynco_search_all_option_%'"
wp option delete 'dynco_add_dashboard_comments_option'

