#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'scporder_install'
wp option delete 'scporder_notice'
wp option delete 'dupo_install'
wp option delete 'scporder_options'

