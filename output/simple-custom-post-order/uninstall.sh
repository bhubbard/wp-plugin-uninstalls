#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simple-rate-time'
wp option delete 'scporder_options'
wp option delete 'scporder_install'
wp option delete 'scporder_notice'

