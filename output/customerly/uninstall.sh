#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cly_cf7_api_notices_options'
wp option delete 'customerly_settings'
wp option delete 'cly_do_activation_redirect'

