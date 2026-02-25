#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'usejajadicourse'
wp option delete 'usejajadiforms'
wp option delete 'usejajadicalendars'
wp option delete 'usejajadielearning'
wp option delete 'usejajadiwidget'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jajadi_training_selectdate_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jajadi_training_selectdate_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jajadi_training_selectdate_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jajadi_training_selectdate_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jajadi_training'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jajadi_training'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jajadi_training'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jajadi_training'"
