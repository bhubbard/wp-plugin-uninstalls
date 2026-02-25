#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'polylang'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gcccn_main_message_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gcccn_policy_link_text_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gcccn_dismiss_button_text_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gcccn_cookie_policy_url_type_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gcccn_url_cookie_policy_link_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gcccn_open_new_tab_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gcccn_cookie_expiry_duration_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gcccn_popup_hide_pages_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gcccn_layout_configuration_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gcccn_url_cookie_policy_option_%'"
wp option delete 'gcccn_open_new_tab'
wp option delete 'gcccn_cookie_policy_url_type'
wp option delete 'gcccn_url_cookie_policy_link'
wp option delete 'gcccn_url_cookie_policy_option'
wp option delete 'gcccn_policy_link_text'
wp option delete 'gcccn_main_message'
wp option delete 'gcccn_dismiss_button_text'
wp option delete 'gcccn_layout_configuration'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gcccn_discourage_cookie_consent_%'"
wp option delete 'gcccn_discourage_cookie_consent'
wp option delete 'gcccn_cookie_expiry_duration'
wp option delete 'gcccn_popup_hide_pages'

