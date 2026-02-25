#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wafwc_send_to'
wp option delete 'wafwc_template_name'
wp option delete 'wafwc_template_language'
wp option delete 'wafwc_data_option'
wp option delete 'wafwc-wa-phone-id'
wp option delete 'wafwc-wa-token'
wp option delete 'wafwc-wa-id'
wp option delete 'wafwc-enable-prefix'

