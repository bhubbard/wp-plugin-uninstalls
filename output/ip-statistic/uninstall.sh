#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ip_statistic_ver'
wp option delete 'ip_statistic_showcounts'
wp option delete 'ip_statistic_savedays'
wp option delete 'ip_statistic_saverows'
wp option delete 'ip_statistic_onlogin'
wp option delete 'ip_statistic_errlogin'
wp option delete 'ip_statistic_showlogin'
wp option delete 'ip_statistic_sav_pas_errlogin'
wp option delete 'ip_statistic_save_pass_ex'

