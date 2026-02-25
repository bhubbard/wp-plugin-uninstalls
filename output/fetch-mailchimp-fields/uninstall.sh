#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mailchimp_config_api_key'
wp option delete 'mailchimp_config_list_id'

