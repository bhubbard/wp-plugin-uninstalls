#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lead_captor_popup_options'
wp option delete 'lead_captor_behavior_options'
wp option delete 'lead_captor_mailchimp_options'
wp option delete 'lead_captor_export_subscribers_options'

