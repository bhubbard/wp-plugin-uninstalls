#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'adtf_integrations'
wp option delete 'adtf_installed'
wp option delete 'adtf_version'
wp option delete 'adtf_cf7_used'

