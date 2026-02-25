#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'proai_txt_manager_enable_llms_txt'
wp option delete 'proai_txt_manager_enable_robots_txt'
wp option delete 'proai_txt_manager_auto_regenerate'
wp option delete 'proai_txt_manager_llms_custom_content'
wp option delete 'proai_txt_manager_robots_custom_rules'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'proai_txt_manager_%'"
wp option delete 'proai_txt_manager_include_sitemap_in_robots'
wp option delete 'proai_txt_manager_disallow_admin'
wp option delete 'proai_txt_manager_disallow_wp_includes'

