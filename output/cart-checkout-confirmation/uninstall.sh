#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'license_checkout_confirm'
wp option delete 'check_confirm_page_fields_setting'
wp option delete 'confirm_on_off_text_bill'
wp option delete 'check_confirm_page_option'
wp option delete 'check_confirm_page_additional'

