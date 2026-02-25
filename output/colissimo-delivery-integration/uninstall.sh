#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cdi_tokentimerswitchnewcdi'
wp option delete 'cdi_o_transferoldsettings'
wp option delete 'wc_settings_tab_colissimo_cleanonsuppress'
wp option delete 'cdi_notice_display'
wp option delete 'cdi_options_version'

