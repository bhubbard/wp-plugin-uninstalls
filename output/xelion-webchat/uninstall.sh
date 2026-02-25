#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xwc_initial_form_enquiry_required'
wp option delete 'xwc_api_host'
wp option delete 'xwc_api_tenant'
wp option delete 'xwc_api_gateway'
wp option delete 'xwc_api_token'
wp option delete 'xwc_api_is_valid'

