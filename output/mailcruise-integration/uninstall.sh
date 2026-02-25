#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mailcruise_api_token'
wp option delete 'mailcruise_endpoint'
wp option delete 'mailcruise_list_uid'

