#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bvsmtp_smpt_global_settings'
wp option delete 'bvopt_smpt_alt_setting_1'
wp option delete 'bvsmtp_smpt_alt_setting_2'
wp option delete 'bvsmtp_smpt_alt_setting_3'
wp option delete 'bvsmtp_smpt_alt_setting_1'

