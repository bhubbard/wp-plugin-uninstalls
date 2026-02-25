#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ses_by_hosting_nl_api_key'
wp option delete 'ses_by_hosting_nl_from_email'
wp option delete 'ses_by_hosting_nl_from_name'

