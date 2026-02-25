#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tokenlink_zendesk_subdomain'
wp option delete 'tokenlink_zendesk_shared_key'
wp option delete 'tokenlink_zendesk_login_redirect'

