#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpso_activation'
wp option delete 'wpso_extras_order'
wp option delete 'wpso_options'

