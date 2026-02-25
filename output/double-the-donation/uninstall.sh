#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'doublethedonation_api_host'
wp option delete 'doublethedonation_public_key'
wp option delete 'doublethedonation_cache_version'
wp option delete 'doublethedonation_setup_step'

