#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'at_sms_do_activation_redirect'
wp option delete 'at_sms_database_version'
wp option delete 'at_sms_contact_groups'
wp option delete 'at_sms_options'

