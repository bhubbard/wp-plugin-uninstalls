#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wps%'"
wp option delete 'wpsdb_key'
wp option delete 'wpsdb_secret'
wp option delete 'wpsdb_auth_step'
wp option delete 'wpsdb_auth_token'
wp option delete 'wpsdb_auth_token_secret'
wp option delete 'wpsdb_menu_pref'
wp option delete 'wpsdb_thank_color'
wp option delete 'wpsdb_php_pear'
wp option delete 'wpsdb_path'
wp option delete 'wpsdb_temp_path'
wp option delete 'wpsdb_allow_ext'
wp option delete 'wpsdb_thank_message'
wp option delete 'wpsdb_show_progress'
wp option delete 'wpsdb_show_multi'
wp option delete 'wpsdb_show_form'
wp option delete 'wpsdb_delete_file'
wp option delete 'wpsdb_multi_link_text'
wp option delete 'wpsdb_redirect_page'
wp option delete 'wpsdb_activation_redirect'
wp option delete 'wpsdb_show_multi_size'
wp option delete 'wpdb_version_number'
wp option delete 'wpsdb_version_number'

