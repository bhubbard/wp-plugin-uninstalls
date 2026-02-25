#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'openid_delegation_url'
wp option delete 'openid_delegation_provider'
wp option delete 'openid_delegation_xrds_location'

