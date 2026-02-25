#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cwp__mailchimp__api_key'
wp option delete 'cwp__enable__mailchimp'

