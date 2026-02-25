#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pp_admintab_show'
wp option delete 'pp_clientuser_adminaccess'
wp option delete 'pp_clientuser_dashpage'
wp option delete 'pp_set_logout_url'
wp option delete 'pp_regfields_list'
wp option delete 'pp_contactfields_list'
wp option delete 'pp_contactemail_subject'
wp option delete 'pp_contactemail_mailto'
wp option delete 'pp_contactemail_msg'
wp option delete 'pp_icon_menu_item'
wp option delete 'pp_my_theme_has_bootstrap'
wp option delete 'pp_chosen_form_style'
wp option delete 'pp_formtoken'
wp option delete 'pp_ppprofile'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pp_%'"
wp option delete 'pp_pplogin'
wp option delete 'pp_pppasswordrecovery'

# Clear Cron Jobs
wp cron event delete 'ppTokenGeneratorStarter'

