#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'guaven_wtd_type'
wp option delete 'guaven_wtd_field_name'
wp option delete 'guaven_wtd_tip_options'
wp option delete 'guaven_wtd_custom_amount'
wp option delete 'guaven_wtd_custom_amount_text'
wp option delete 'guaven_wtd_notice'
wp option delete 'guaven_wtd_notice_hideafter'
wp option delete 'guaven_wtd_installed_100'
wp option delete 'guaven_wtd_custom_amount_button'

