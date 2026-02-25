#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'Wp_Stibee_apitoken'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_apitoken'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_selectedlist'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_formfields'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_formtitle'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_formdesc'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_buttontext'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_buttoncolor'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_buttonbg'"
wp option delete 'Wp_Stibee_subscribeendpoint'
wp option delete 'update_option_Wp_Stibee_selectedlist'
wp option delete 'update_option_Wp_Stibee_formfields'
wp option delete 'Wp_Stibee_selectedlist'
wp option delete 'Wp_Stibee_formfields'
wp option delete 'Wp_Stibee_formtitle'
wp option delete 'Wp_Stibee_formdesc'
wp option delete 'Wp_Stibee_buttontext'
wp option delete 'Wp_Stibee_buttoncolor'
wp option delete 'Wp_Stibee_buttonbg'
wp option delete 'Wp_Stibee_position'
wp option delete 'Wp_Stibee_day'

