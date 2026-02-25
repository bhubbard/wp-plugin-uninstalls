#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mk_te_settings_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'theme_editor_email_verified_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'theme_editor_email_address_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'verify_theme_editor_fname_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'verify_theme_editor_lname_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_debug'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'theme_mods_%'"
wp option delete 'allowedthemes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_configvars'"
wp option delete 'theme_editor_child_theme_permission'

# Delete Transients
wp transient delete 'mk_te_close_te_help_c'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_theme_editor_cancel_lk_popup_%' OR option_name LIKE '_site_transient_theme_editor_cancel_lk_popup_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_debug' OR option_name LIKE '_site_transient_%_debug'"

