#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'venio_config'
wp option delete 'venio_api_last_call'
wp option delete 'rewrite_rules'

