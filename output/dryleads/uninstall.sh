#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dryleads_flow_id'
wp option delete 'dryleads_enable_widget'
wp option delete 'dryleads_contact_form_7'
wp option delete 'dryleads_city'

