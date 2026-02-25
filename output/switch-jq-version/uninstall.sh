#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'switch_jq_version_version'
wp option delete 'switch_jq_version_cdn'
wp option delete 'switch_jq_version_customise_url'

